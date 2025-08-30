from django.urls import path

from Services import views

app_name = 'Services'

urlpatterns = [
    path('Services/', views.Se_services, name='Services'),

    path('urban_des/', views.Urban_Desg, name='Urban_Des'),

    path('landscape/', views.landscape, name='landscape'),

    path('ExternalDesign/', views.External__Design, name='ExternalDesign'),

    path('Interior_Design/', views.Interior_Design, name='Interior_Design'),

]
