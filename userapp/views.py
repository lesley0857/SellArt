from django.shortcuts import render, redirect

# Create your views here.
from .models import *
from .decorator import authenticate_user
from django.contrib.auth import authenticate, login, logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from artapp.models import *
from django.template.loader import render_to_string
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from .form import *


def home_view(request, **kwargs):
    if kwargs:
        togg_number = kwargs['id']
        user = Custombaseuser.objects.filter(id=request.user.pk).first()
        art = Artproduct.objects.filter(id=togg_number)
        cat = Category.objects.filter(name='Smiling_Through_Pain').first()
        slider1 = Artproduct.objects.filter(category=cat).first()

        tabular_display = Artproduct.objects.filter(category=togg_number)
        category = Category.objects.all()
        p = Paginator(tabular_display, 3)
        page_number = request.GET.get('page')
        try:
            page_obj = p.get_page(page_number)
        except PageNotAnInteger:
            page_obj = p.page(1)
        except EmptyPage:
            page_obj = p.page(p.num_pages)
        context = {'user': user, 'slider1': slider1,
                   #    'slider2': slider2,
                   'art': art, 'category': category,
                   'togg_number': togg_number, 'page_obj': page_obj}
        return render(request, 'index.html', context)
    else:
        print(request.user)
        cat = Category.objects.filter(name='Smiling_Through_Pain').first()
        slider1 = Artproduct.objects.filter(category=cat).first()
        user = Custombaseuser.objects.filter(id=request.user.pk).first()
        art = Artproduct.objects.all()
        category = Category.objects.all()
        p = Paginator(art, 3)
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
        context = {'user': user, 'art': art, "slider1": slider1,
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
            return redirect("auction_view")
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
        return redirect('login')
    context = {}
    return render(request, 'signup.html', context)


@login_required(login_url='login')
def profile_view(request):
    userr = Custombaseuser.objects.get(email=request.user.email)
    update_customer_form = update_customer(instance=userr)
    update_picture_form = update_picture(
        request.POST, request.FILES, instance=userr)
    if request.method == "POST" and request.POST.get('type') == 'update_picture':
        print(update_picture_form.data)
        update_picture_form = update_picture(
            request.POST, request.FILES, instance=userr)
        if update_picture_form.is_valid():
            update_picture_form.save(commit=True)

    if request.method == "POST" and request.POST.get('type') == 'update_user_info':
        update_customer_form = update_customer(
            data=request.POST, instance=userr)
        if update_customer_form.is_valid():
            update_customer_form.save(commit=True)
    if request.method == "POST" and request.POST.get('type') == 'update_password':
        current_pwd = request.POST.get('password')
        new_pwd = request.POST.get('new_password')
        check = userr.check_password(current_pwd)
        print(check)
        if check == True:
            userr.set_password(new_pwd)
            userr.save()

    if request.method == "POST" and request.POST.get('type') == 'delete':
        print('in')
        userr = Custombaseuser.objects.get(email=request.user.email)
        userr.delete()
        request.user.delete()

    context = {'details': userr,
               'update_picture_form': update_picture_form,
               'update_customer_form': update_customer_form, }
    return render(request, 'profile_update.html', context)


def logout_view(request):
    logout(request)
    return redirect('login')


def error_404_view(request, exception):
    context = {}
    return render(request, '404.html', context)
