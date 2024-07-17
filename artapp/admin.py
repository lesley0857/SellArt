from django.contrib import admin
from .models import *
from django.db.models.fields.related import ForeignKey
from django.forms.models import ModelChoiceField
from django.http.request import HttpRequest
from typing import Any
from userapp.models import *
# Register your models here.
admin.site.register(Category)
admin.site.register(Brand)

class ArtpictureModelAdmin(admin.StackedInline):
    model = ArtpictureModel

@admin.register(Artproduct)
class ArtproductModelAdmin(admin.ModelAdmin):
    inlines = [ArtpictureModelAdmin]
    def formfield_for_foreignkey(self, db_field: ForeignKey[Artproduct], request: HttpRequest, **kwargs: Any ) -> ModelChoiceField :
        if db_field.name=='owner':
            kwargs["queryset"]= Custombaseuser.objects.filter(id=request.user.id)
            return super().formfield_for_foreignkey(db_field, request, **kwargs)
        
    def formfield_for_foreignkey(self, db_field: ForeignKey[Artproduct], request: HttpRequest, **kwargs: Any ) -> ModelChoiceField :
        if db_field.name=='category':
            kwargs["queryset"]= Category.objects.all()
            return super().formfield_for_foreignkey(db_field, request, **kwargs)