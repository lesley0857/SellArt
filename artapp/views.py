from django.shortcuts import render

# Create your views here.
def product_view(request):

    context={}
    return render(request, 'products.html', context)