from django import forms
from django.contrib.auth.forms import UserCreationForm
from django.contrib.auth.models import User
from django.forms import ModelForm
from django.http.request import HttpRequest
from django.http import request
from django.contrib.auth.models import User
from django.contrib.auth import get_user
from django.contrib.sessions.models import Session


from .models import *
from artapp.models import Artproduct

class User_Product_Admin_Form(forms.ModelForm):
    products  = forms.ModelChoiceField(queryset=Artproduct.objects.filter(owner__pk=1),widget=forms.Select)
    class Meta:
        model=Custombaseuser
        fields="__all__"


class signup_form(forms.ModelForm):
    #details = forms.CharField(widget=forms.TextInput)
    #filefield  = forms.CharField(widget=forms.FileInput(attrs=['multiple']))
    # print(User.objects.all())
    # products  = forms.ModelChoiceField(queryset=Custombaseuser.objects.filter(id=1),widget=forms.Select)

    class Meta:
        model = Custombaseuser
        fields ='__all__'