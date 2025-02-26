from django.contrib import admin
from django.db.models.query import QuerySet
from .models import *
from django.db.models.fields.related import ForeignKey, RelatedField
from django.forms.models import ModelChoiceField
from django.http.request import HttpRequest as request
from typing import Any
from .form import *

# Register your models here.
from userapp.models import *
from django.http.request import HttpRequest
from django.contrib.auth import get_user

admin.site.register(SubscribedUsers)


@admin.register(Custombaseuser)
class CustombaseuserModelAdmin(admin.ModelAdmin):
    form = signup_form
