from django.shortcuts import render
from .models import *
# Create your views here.
def product_view(request,id):
    products = Artproduct.objects.get(name=id)
    context={'products':products}
    return render(request, 'products.html', context)