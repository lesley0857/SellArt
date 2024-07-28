from django.urls import re_path, path

from . import consumer

websocket_urlpatterns = [
    path('ws/auction/<roomname>', consumer.ChatConsumer.as_asgi()),
]
