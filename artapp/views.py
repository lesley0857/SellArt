from django.shortcuts import render
from .models import *
# Create your views here.


def product_view(request, id):
    cat = Category.objects.filter(name=id).first()
    category = Category.objects.all()
    slider1 = Artproduct.objects.filter(category=cat).first()
    art = Artproduct.objects.all()
    products = Artproduct.objects.filter(name=id).first()
    context = {'category': category, 'slider1': slider1,
               'products': products, 'art': art}
    return render(request, 'products.html', context)
