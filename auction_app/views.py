from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
# Create your views here.
from artapp.models import *
from auction_app.models import *


@login_required(login_url='login')
def auction_view(request):
    art = Artproduct.objects.all()
    message = auctiongroupChat.objects.all()
    if request.META.get('HTTP_HX_REQUEST'):
        print('HTMX')
    context = {'art': art, 'message': message}
    return render(request, 'auction.html', context)
