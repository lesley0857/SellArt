from django.shortcuts import render,redirect

# Create your views here.
from .form import signup_form
from .models import *
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib import messages


def home_view(request):
    
    context={}
    return render(request, 'index.html', context)

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

    context={}
    return render(request, 'login.html', context)

@login_required(login_url='login')
def logout_view(request):
    logout(request)
    return redirect('login')

def signup_view(request):
    form = signup_form(request.POST)
    if request.method=="POST":
        Custombaseuser.objects.create_user(request.POST.get('Email'),
                                         request.POST.get('Name'),
                                         request.POST.get('Password'))
        return redirect('profile_view')
    context={}
    return render(request, 'signup.html', context)

def profile_view(request):

    context={}
    return render(request, 'login.html', context)

def logout_view(request):
    logout(request)
    return redirect('login')
   

def error_404_view(request,exception):
    context = {}
    return render(request,'404.html',context)