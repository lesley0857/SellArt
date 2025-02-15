from django.http import HttpResponse
from django.shortcuts import redirect
from django.contrib.auth.models import AnonymousUser
from django.urls import reverse


def authenticate_user(view):
    def wrapper_func(request, *args, **kwargs):
        if request.user.is_authenticated:  # this would make sure that you cant goto signup page while u are signed in
            return redirect('home')
        else:  # if u are not signed in then you cant acces the signup page
            return view(request, *args, **kwargs)
    return wrapper_func
