import json
from django.template.loader import render_to_string
from asgiref.sync import async_to_sync
from channels.generic.websocket import WebsocketConsumer
from auction_app.models import *


class ChatConsumer(WebsocketConsumer):
    def connect(self):
        print('herrrrrrrr')
        self.user = self.scope['user']
        self.room_name = self.scope["url_route"]["kwargs"]["roomname"]
        self.room_group_name = f"chat_{self.room_name}"
        print(self.room_name)

        # Join room group
        async_to_sync(self.channel_layer.group_add)(
            self.room_group_name, self.channel_name
        )
        self.accept()

    def receive(self, text_data):
        text_data_json = json.loads(text_data)
        print(text_data_json)
        data = text_data_json['input']
        # json.dumps({"message": data})
        chat_value = auctiongroupChat.objects.filter(author=self.user,
                                                     Artproduct__name=self.room_name).first()
        print(chat_value)
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
        print(message_id)
        message = auctiongroupChat.objects.get(id=message_id)
        context = {'message': message, 'user': self.user}
        message_html = render_to_string(
            "partials/auction_display.html", context=context)
        self.send(text_data=message_html)

    def disconnect(self, close_code):
        pass
