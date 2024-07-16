from django.shortcuts import render,redirect

# Create your views here.
from .form import signup_form
from .models import *
from .decorator import authenticate_user
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages
from artapp.models import *

def home_view(request):
    print(request.user)
    user= Custombaseuser.objects.filter(id=request.user.pk).first()
    art = Artproduct.objects.filter(owner__pk=request.user.pk)
    category = Category.objects.all()
    print(art)
    context={'user':user,'art':art,'category':category}
    return render(request, 'index.html', context)

@authenticate_user
def login_view(request):
    if request.method == "POST":
        email = request.POST.get('Email')
        password = request.POST.get('Password')
        email = authenticate(request, email=email, password=password)
        if email is not None: 
            login(request, email)
            return redirect("home")
        else:
            messages.info(request, "Username OR Password is incorrect") 
    category = Category.objects.all()
    context={'category':category}
    return render(request, 'login.html', context)

@login_required(login_url='login')
def logout_view(request):
    logout(request)
    return redirect('login')

@authenticate_user
def signup_view(request):
    form = signup_form(request.POST)
    if request.method=="POST":
        Custombaseuser.objects.create_user(email=request.POST.get('Email'),
                                         name=request.POST.get('Name'),
                                         password=request.POST.get('Password'))
        return redirect('profile_view')
    context={}
    return render(request, 'signup.html', context)

@login_required(login_url='login')
def profile_view(request):

    context={}
    return render(request, 'index.html', context)

def logout_view(request):
    logout(request)
    return redirect('login')
   

def error_404_view(request,exception):
    context = {}
    return render(request,'404.html',context)