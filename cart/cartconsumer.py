import json
from django.template.loader import render_to_string
from asgiref.sync import async_to_sync
from channels.generic.websocket import WebsocketConsumer
from userapp.models import *


class CartConsumer(WebsocketConsumer):
    def connect(self):
        self.user = self.scope['user']
        self.room_name = 'cart'

        # event = {
        #     'type': 'update_online_status',
        # }
        # async_to_sync(self.channel_layer.group_send)(
        #     self.room_group_name, event
        # )

        self.accept()

    def disconnect(self, close_code):
        pass
