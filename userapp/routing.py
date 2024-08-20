from django.urls import re_path, path

from . import consumer
from cart import cartconsumer

websocket_urlpatterns = [
    path('ws/auction/<roomname>', consumer.ChatConsumer.as_asgi(), name='auction_ws'),
    path('ws/cart', cartconsumer.CartConsumer.as_asgi(), name='cart_ws'),

]
