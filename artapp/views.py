from django.shortcuts import render
from .models import *
# Create your views here.
def product_view(request,id):
    product = Artproduct.objects.filter(name=id)
    context={'product':product}
    return render(request, 'products.html', context)