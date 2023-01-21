from django.urls import path
from . import views

urlpatterns = [ 
    path('', views.HomeView.as_view(), name='home'),
    path('add-customer', views.AddCustomerView.as_view(), name='add-customer')
]