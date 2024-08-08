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
    products = forms.ModelChoiceField(
        queryset=Artproduct.objects.filter(owner__pk=1), widget=forms.Select)

    class Meta:
        model = Custombaseuser
        fields = "__all__"


class signup_form(forms.ModelForm):
    class Meta:
        model = Custombaseuser
        fields = '__all__'


class update_picture(forms.ModelForm):

    class Meta:
        model = Custombaseuser
        fields = ['profile_pic']


class update_customer(forms.ModelForm):
    email = forms.EmailField(widget=forms.EmailInput(attrs={
                             'class': 'border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm mt-1 block w-full'}))
    # firstname = forms.CharField(widget=forms.TextInput(
    #     attrs={'class': 'border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm mt-1 block w-full'}))
    # lastname = forms.CharField(widget=forms.TextInput(
    #     attrs={'class': 'border-gray-300 dark:border-gray-700 dark:bg-gray-900 dark:text-gray-300 focus:border-indigo-500 dark:focus:border-indigo-600 focus:ring-indigo-500 dark:focus:ring-indigo-600 rounded-md shadow-sm mt-1 block w-full'}))

    class Meta:
        model = Custombaseuser
        fields = ['email', 'name', 'birth_date',
                  'phone_number', 'alternative_number',
                  'marital_status']
