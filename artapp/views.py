from django.shortcuts import render
from .models import *
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger

# Create your views here.


def product_view(request, id):
    cat = Category.objects.filter(name=id).first()
    category = Category.objects.all()
    slider1 = Artproduct.objects.filter(category=cat).first()
    art = Artproduct.objects.all()
    products = Artproduct.objects.filter(name=id)
    category = Category.objects.all()
    product_to_display = Paginator(products, 4)
    page_number = request.GET.get('page')
    try:
        page_obj = product_to_display.get_page(page_number)
    except PageNotAnInteger:
        page_obj = product_to_display.page(1)
    except EmptyPage:
        page_obj = product_to_display.page(product_to_display.num_pages)

    context = {'category': category, 'slider1': slider1,
               'page_obj': page_obj,
               'products': products, 'art': art}
    return render(request, 'products.html', context)
