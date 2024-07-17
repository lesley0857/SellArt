from django import template
from artapp.views import *
from artapp.models import *

register =  template.Library()

@register.filter
def artproduct_count(value):
    countval = Artproduct.objects.filter(category_id=value)
    return countval.count()

@register.filter
def artproduct_for_tabular_display(value):
    countval = Artproduct.objects.filter(category_id=value.pk)
    return countval

@register.filter
def artproduct_loop(value):
    countval = Artproduct.objects.filter(category_id=value)
    return countval

@register.filter
def firstartpictures(value):
    pictures = ArtpictureModel.objects.filter(pic_name=value)
    return pictures.first().file.url

@register.filter
def secondartpictures(value):
    pictures = ArtpictureModel.objects.filter(pic_name=value)
    try:
        return pictures[1].file.url
    except:
        pass




