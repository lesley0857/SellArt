from django.shortcuts import render, redirect
from .models import *
from django.http import HttpResponse
from django.contrib.auth.decorators import login_required
from userapp.models import *
# Create your views here.


@login_required(login_url='login')
def cart_view(request, **kwargs):
    if request.method == "POST":
        cart_id = kwargs['id']
        item_to_be_removed = Cartmodel.objects.filter(pk=cart_id).first()
        item_to_be_removed.delete()
        customer = Custombaseuser.objects.get(email=request.user.email)
        cart_items = Cartmodel.objects.filter(user_id=customer.pk)
        context = {"cart_items": cart_items}
        return render(request, "shoppingcart.html", context)
    else:
        customer = Custombaseuser.objects.get(email=request.user.email)
        cart_items = Cartmodel.objects.filter(user_id=customer.pk)
        context = {"cart_items": cart_items}
        return render(request, "shoppingcart.html", context)


@login_required(login_url='login')
def addcart_view(request, **kwargs):
    product_id = kwargs['id']
    print(kwargs)
    art = Artproduct.objects.get(id=product_id)
    customer = Custombaseuser.objects.get(email=request.user.email)
    try:
        item_to_be_added = Cartmodel.objects.get(product=product_id)
        print("added to cart already")
        html = "<html><body>Item exists in the cart</body></html>"
        return HttpResponse(html)
    except:
        item_to_be_added = Cartmodel.objects.create(product=art,
                                                    user=customer)
        html = "<html><body>added to cart</body></html>"

        return HttpResponse(html)
