from django.shortcuts import render
from .models import *
# Create your views here.


def product_view(request, id):
    art = Artproduct.objects.all()
    products = Artproduct.objects.get(name=id)
    context = {'products': products, 'art': art}
    return render(request, 'products.html', context)
