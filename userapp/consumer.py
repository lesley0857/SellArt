import json
from django.template.loader import render_to_string
from asgiref.sync import async_to_sync
from channels.generic.websocket import WebsocketConsumer
from auction_app.models import *


class ChatConsumer(WebsocketConsumer):
    def connect(self):
        self.user = self.scope['user']
        self.room_name = self.scope["url_route"]["kwargs"]["roomname"]
        self.room_group_name = f"chat_{self.room_name}"
        print(self.room_name)
        user = Custombaseuser.objects.filter(name=self.user).first()
        # check if
        group, created_group = auctiongroup. objects.get_or_create(name=self.room_name,
                                                                   user_online=user)

        if created_group:
            self.augroup = created_group
        self.augroup = group
        # Join room groupy
        async_to_sync(self.channel_layer.group_add)(
            self.room_group_name, self.channel_name
        )

        event = {
            'type': 'update_online_status',
        }
        async_to_sync(self.channel_layer.group_send)(
            self.room_group_name, event
        )

        self.accept()

    def receive(self, text_data):
        text_data_json = json.loads(text_data)
        print(text_data_json)
        data = text_data_json['input']
        # json.dumps({"message": data})
        artt = Artproduct.objects.filter(name=self.room_name).first()
        chat_value = auctiongroupChat.objects.filter(author=self.user,
                                                     Artproduct=artt.pk).first()

        if chat_value == None:
            artproduct = Artproduct.objects.filter(name=self.room_name).first()
            chat_value = auctiongroupChat.objects.create(author=self.user,
                                                         Artproduct=artproduct,
                                                         auction_value=data,
                                                         )

        else:
            chat_value.auction_value = data
            chat_value.save()
        event = {
            'type': 'message_handler',
            'message_id': chat_value.pk,
        }
        async_to_sync(self.channel_layer.group_send)(
            self.room_group_name, event
        )

    def message_handler(self, event):
        message_id = event['message_id']
        message = auctiongroupChat.objects.get(id=message_id)
        context = {'message': message, 'user': self.user}
        message_html = render_to_string(
            "partials/auction_display.html", context=context)
        self.send(text_data=message_html)

    def tell_if_im_online():
        return

    def update_online_status(self, event):
        user = Custombaseuser.objects.get(name=self.user)
        people_online = auctiongroup.objects.filter(name=self.room_name,
                                                    )
        onlineToF = auctiongroup.objects.filter(name=self.room_name,
                                                user_online=user).first()
        status = ''
        if onlineToF == None:
            status = False
        else:
            status = True

        context = {'people_online': people_online.count() - 1,
                   'status': status}
        print(f'Online{people_online}')
        message_html = render_to_string(
            "partials/status.html", context=context)
        self.send(text_data=message_html)

    def disconnect(self, close_code):
        # send out message before disconnecting
        # based on the cause of disconnection
        # On the load of auction page without a kwargs-
        # diconnect the websocket
        user = Custombaseuser.objects.filter(name=self.user).first()
        self.augroup.delete()
        event = {
            'type': 'update_online_status',
        }
        async_to_sync(self.channel_layer.group_send)(
            self.room_group_name, event
        )
        async_to_sync(self.channel_layer.group_discard)(
            self.room_group_name, self.channel_name
        )
