from django.urls import path

from Portfolio import views

app_name = 'Portfolio'

urlpatterns = [
    path('feed', views.masters, name='feed'),
    path('<str:LSlug>', views.portfolio_detail, name = 'portfolio_detail'),

]