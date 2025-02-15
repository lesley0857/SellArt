from django.db import models
from userapp.models import *
from artapp.models import *

# Create your models here.


class auctiongroup(models.Model):
    name = models.CharField(max_length=150, blank=False)
    user_online = models.ForeignKey(
        Custombaseuser, related_name="online_in_group", on_delete=models.CASCADE, null=True, blank=True)

    def __str__(self):
        return f'{self.name}'


class auctiongroupChat(models.Model):
    group = models.ForeignKey(
        auctiongroup, on_delete=models.CASCADE, null=True, blank=True)
    Artproduct = models.ForeignKey(
        Artproduct, on_delete=models.CASCADE, null=True, blank=True)
    author = models.ForeignKey(
        Custombaseuser, on_delete=models.CASCADE, null=True, blank=True)
    auction_value = models.CharField(max_length=150, blank=False)
    created = models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return f'{self.author.name} : {self.auction_value}'
# create a signal, once an auctiongroupchat is created.
#  the art involved should be set to bid activated

    class Meta:
        ordering = ['-created']
