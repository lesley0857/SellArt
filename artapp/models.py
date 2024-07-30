from django.db import models
from userapp.models import *
from django.urls import reverse

# Create your models here.


class Category(models.Model):
    name = models.CharField(max_length=150, blank=False)
    description = models.TextField(max_length=1500, blank=False)

    def __str__(self):
        return f'{self.name}'

    def geturl(self):
        return reverse('homee', kwargs={"id": self.id})


class Brand(models.Model):
    name = models.CharField(max_length=150, blank=False)

    def __str__(self):
        return f'{self.name}'


class Artproduct(models.Model):
    category = models.ForeignKey(
        Category, on_delete=models.CASCADE, null=True, blank=True, related_name='category')
    owner = models.ForeignKey(
        Custombaseuser, on_delete=models.CASCADE, null=True, blank=True, related_name='owner')
    name = models.CharField(max_length=150, blank=False)
    description = models.TextField(max_length=1500, blank=False)
    brand = models.ForeignKey(
        Brand, on_delete=models.CASCADE, null=True, blank=True, related_name='category')
    creation_date = models.DateTimeField(auto_now_add=True, null=True)
    price = models.CharField(max_length=100, blank=False, null=True)

    def get_absolute_url(self):
        return reverse('product_view', kwargs={"id": self.name})

    def get_auction_url(self):
        return reverse('auction_view_detail', kwargs={"id": self.name})

    def __str__(self):
        return f'{self.name}'


class ArtpictureModel(models.Model):
    pic_name = models.ForeignKey(Artproduct, on_delete=models.CASCADE)
    file = models.FileField(upload_to='images', null=True, blank=True)

    def __str__(self):
        return f'{self.pic_name}--{self.file.name}'
