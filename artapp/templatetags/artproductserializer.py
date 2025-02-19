from django import template
from artapp.views import *
from artapp.models import *

register = template.Library()


@register.filter
def artproduct_count(value):
    countval = Artproduct.objects.filter(category_id=value)
    return countval.count()


@register.filter
def artproduct_for_tabular_display(value, qs):
    countval = Artproduct.objects.filter(category=value)
    return countval


@register.filter
def artproduct_loop(value):
    countval = Artproduct.objects.filter(category_id=value)
    return countval


@register.filter
def firstartpictures(value):
    pictures = ArtpictureModel.objects.filter(pic_name=value.id)
    print(pictures)
    return pictures.first().file.url


@register.filter
def secondartpictures(value):
    pictures = ArtpictureModel.objects.filter(pic_name=value.id)
    try:
        return pictures[1].file.url
    except:
        pass


@register.filter
def imagefromauctionid(value):
    picture = Custombaseuser.objects.filter(id=value)
    return picture.first().profile_pic.url
