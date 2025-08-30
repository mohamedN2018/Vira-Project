from django.urls import path

from vira import views

app_name = 'vira'

urlpatterns = [
    path('', views.master)
]