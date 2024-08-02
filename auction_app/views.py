from django.shortcuts import render, redirect
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
# Create your views here.
from artapp.models import *
from auction_app.models import *
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


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
        paginator = Paginator(art, 2)
        page_number = request.GET.get('page')
        try:
            page_obj = paginator.get_page(page_number)
        except PageNotAnInteger:
            page_obj = paginator.page(1)
        except EmptyPage:
            page_obj = paginator.page(paginator.num_pages)
        context = {'art_name': art_id, 'arts': art, 'message': message,
                   'page_obj': page_obj, 'particular_art': particular_art}
        return render(request, 'auction.html', context)
    else:
        art = Artproduct.objects.all()
        user = request.user.email
        message = auctiongroupChat.objects.filter(author__email=user)
        print(message)
        context = {'arts': art, 'message': message}
        return render(request, 'auction.html', context)
