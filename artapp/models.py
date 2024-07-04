from django.db import models
from userapp.models import *

# Create your models here.
class Category(models.Model):
    name = models.CharField(max_length=150, blank=False)
    description = models.TextField(max_length=1500, blank=False)
    

class Artproduct(models.Model):
    category =  models.ForeignKey(Category,on_delete=models.CASCADE,null=True,blank=True,related_name='category')
    owner =  models.OneToOneField(Custombaseuser,on_delete=models.CASCADE,null=True,blank=True,related_name='owner')
    name = models.CharField(max_length=150, blank=False)
    description = models.TextField(max_length=1500, blank=False)
    creation_date =  models.DateTimeField(auto_now_add=True, null=True)

    def __str__(self):
        return f'{self.name}'
