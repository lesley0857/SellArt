from django.db import models
from userapp.models import *
from artapp.models import *

# Create your models here.


class Cartmodel(models.Model):
    user = models.ForeignKey(
        Custombaseuser, on_delete=models.CASCADE, null=True, blank=True, related_name='cart_user')
    product = models.ForeignKey(
        Artproduct, on_delete=models.CASCADE, null=True, blank=True)
    quantity = models.IntegerField(blank=True, null=True)

    def price(self):
        price = int(self.product.price)
        return price

    def __str__(self):
        return f'{self.user}--{self.product.name}----{self.price()}'
