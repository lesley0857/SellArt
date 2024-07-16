from django import template
from artapp.views import *
from artapp.models import *

register =  template.Library()

@register.filter
def artproduct_count(value):
    countval = Artproduct.objects.filter(category_id=value)
    return countval.count()

@register.filter
def artproduct_loop(value):
    countval = Artproduct.objects.filter(category_id=value)
    return countval

@register.filter
def firstartpictures(value):
    pictures = ArtpictureModel.objects.filter(pic_name=value)
    return pictures[0].file.url