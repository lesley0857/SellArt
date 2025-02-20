from django.contrib import admin
from django.urls import path, include
from django.conf.urls.static import static
from django.conf import settings
from userapp.views import *
from artapp.views import *
from auction_app.views import *
from cart.views import *

urlpatterns = [
    path('admin/', admin.site.urls),
    path('', home_view, name='home'),
    path('prod/<str:id>/', home_view, name='homee'),
    path('submenu/<str:keyword>/', submenu_view, name='submenu_view'),
    path('login/', login_view, name='login'),
    path('profile/', profile_view, name='profile_view'),
    path('logout/', logout_view, name='logout_view'),
    path('signup/', signup_view, name='signup'),
    path('cart/', cart_view, name='shoppingcart'),
    path('cart/add/<str:id>/', addcart_view, name='addCartItem'),
    path('cart/<str:id>/', cart_view, name='deleteItem'),
    path('product/<str:id>/', product_view, name='product_view'),
    path('auction/', auction_view, name='auction_view'),
    path('auction/<str:id>/', auction_view, name='auction_view_detail'),
    # path('art',art_detail, name='art_detail'),

]
urlpatterns += static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
urlpatterns += static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)

handler404 = 'userapp.views.error_404_view'
