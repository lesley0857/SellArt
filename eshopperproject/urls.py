from django.contrib import admin
from django.urls import path,include

from userapp.views import *
from artapp.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('accounts/', include('allauth.urls')),
    path('',home_view, name='home'),
    path('login/',login_view, name='login'),
    path('profile/',profile_view, name='profile_view'),
    path('logout/',logout_view, name='logout_view'),
    path('signup/',signup_view, name='signup'),
    path('product/',product_view, name='product_view'),
    # path('art',art_detail, name='art_detail'),
    
]

handler404 = 'userapp.views.error_404_view'
