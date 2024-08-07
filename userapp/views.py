from django.shortcuts import render, redirect

# Create your views here.
from .form import signup_form
from .models import *
from .decorator import authenticate_user
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from artapp.models import *
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger


def home_view(request, **kwargs):
    if kwargs:
        togg_number = kwargs['id']
        user = Custombaseuser.objects.filter(id=request.user.pk).first()
        art = Artproduct.objects.filter(owner__pk=request.user.pk)
        tabular_display = Artproduct.objects.filter(category=togg_number)
        category = Category.objects.all()
        p = Paginator(tabular_display, 1)
        print(art)
        page_number = request.GET.get('page')
        try:
            page_obj = p.get_page(page_number)
        except PageNotAnInteger:
            page_obj = p.page(1)
        except EmptyPage:
            page_obj = p.page(p.num_pages)
        context = {'user': user, 'art': art, 'category': category,
                   'togg_number': togg_number, 'page_obj': page_obj}
        return render(request, 'index.html', context)
    else:
        print(request.user)
        user = Custombaseuser.objects.filter(id=request.user.pk).first()
        art = Artproduct.objects.filter(owner__pk=request.user.pk)
        category = Category.objects.all()
        p = Paginator(art, 2)
        page_number = request.GET.get('page')
        try:
            # returns the desired page object
            page_obj = p.get_page(page_number)
        except PageNotAnInteger:
            # if page_number is not an integer then assign the first page
            page_obj = p.page(1)
        except EmptyPage:
            # if page is empty then return last page
            page_obj = p.page(p.num_pages)
        context = {'user': user, 'art': art,
                   'category': category, 'page_obj': page_obj}
        return render(request, 'index.html', context)


@authenticate_user
def login_view(request):
    if request.method == "POST":
        email = request.POST.get('Email')
        password = request.POST.get('Password')
        email = authenticate(request, email=email, password=password)
        if email is not None:
            login(request, email)
            messages.info(request, "Login")
            return redirect("home")
        else:
            messages.info(request, "Username OR Password is incorrect")

    category = Category.objects.all()
    context = {'category': category}
    return render(request, 'login.html', context)


@login_required(login_url='login')
def logout_view(request):
    logout(request)
    return redirect('login')


@authenticate_user
def signup_view(request):
    form = signup_form(request.POST)
    if request.method == "POST":
        Custombaseuser.objects.create_user(email=request.POST.get('Email'),
                                           name=request.POST.get('Name'),
                                           password=request.POST.get('Password'))
        return redirect('profile_view')
    context = {}
    return render(request, 'signup.html', context)


@login_required(login_url='login')
def profile_view(request):

    context = {}
    return render(request, 'index.html', context)


def logout_view(request):
    logout(request)
    return redirect('login')


def error_404_view(request, exception):
    context = {}
    return render(request, '404.html', context)
