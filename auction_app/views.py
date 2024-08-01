from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
# Create your views here.
from artapp.models import *
from auction_app.models import *


@login_required(login_url='login')
def auction_view(request, **kwargs):
    if kwargs:
        user = request.user.email
        art_id = kwargs['id']
        print(art_id)
        art = Artproduct.objects.all()
        particular_art = Artproduct.objects.filter(name=art_id).first()
        message = auctiongroupChat.objects.filter(
            Artproduct=particular_art)
        context = {'art_name': art_id, 'arts': art, 'message': message,
                   'particular_art': particular_art}
        return render(request, 'auction.html', context)
    else:
        art = Artproduct.objects.all()
        user = request.user.email
        message = auctiongroupChat.objects.filter(author__email=user)
        context = {'arts': art, 'message': message}
        return render(request, 'auction.html', context)
