from django.shortcuts import render
from .models import *
# Create your views here.


def product_view(request, id):
    cat = Category.objects.filter(name='Smiling_Through_Pain')[0]
    slider1 = Artproduct.objects.filter(category=cat).first()
    art = Artproduct.objects.all()
    products = Artproduct.objects.filter(name=id).first()
    context = {'slider1': slider1, 'products': products, 'art': art}
    return render(request, 'products.html', context)
