from django.db import models

# Create your models here.
from django.contrib.auth.models import BaseUserManager, AbstractBaseUser, PermissionsMixin
from rest_framework.response import Response
from rest_framework import status
from django.utils.translation import gettext_lazy as _



class ART_user_Manager(BaseUserManager):
    def create_user(self, email, name, password=None):
        if name is None:
            raise ValueError('User should have a name')
        
        if email is None:
            raise ValueError(_('Please provide an email'))
        email = self.normalize_email(email)
        user = self.model(email=email, name=name)
        user.set_password(password)
        user.save(using=self.db)
        return user

    def create_superuser(self, email, name, password=None):

        user = self.create_user(email, name, password)
        user.is_staff = True
        user.is_superuser = True
        user.save(using=self.db)
        return user


class Custombaseuser(AbstractBaseUser, PermissionsMixin):
    STATUS = (('Single', 'Single'), ('Married',
              'Married'), ('Widowed', 'Widowed'))
    
    email = models.EmailField(_('email address'), unique=True)
    username = models.CharField(max_length=150, blank=False)
    products = models.CharField(max_length=150, blank=False,null=True)
    birth_date = models.DateField(blank=False, null=True)
    joined_date = models.DateTimeField(auto_now_add=True, null=True)
    phone_number = models.PositiveIntegerField(blank=False, null=True)
    alternative_number = models.PositiveIntegerField(blank=True, null=True)
    marital_status = models.CharField(
        max_length=200, choices=STATUS, default='STATUS[0]', blank=False, null=True)
    next_of_kin = models.CharField(
        max_length=150, blank=False, default="Nulll")
    next_of_kin_number = models.PositiveIntegerField(blank=False, null=True)
    profile_pic = models.ImageField(
        upload_to='images', default="/variac.jpeg/", blank=True, null=True)
    about_user = models.TextField(blank=True)
    email_verified = models.BooleanField(default=False)
    is_staff = models.BooleanField(default=False)
    is_superuser = models.BooleanField(default=False)

    objects = ART_user_Manager()
    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = ['name']

    def __str__(self):
        return f'{self.name}'