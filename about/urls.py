from django.urls import path

from about import views

app_name = 'about'

urlpatterns = [
    path('menu', views.MenuMaster, name='menu')
]