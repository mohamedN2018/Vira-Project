from django.shortcuts import render

# Create your views here.
from about.models import About, imageRestaurants
from contact.models import Info
from vira.models import NavHeader, media


def master(request):
    about_bar = About.objects.all()
    image_restaurants = imageRestaurants.object.all()
    context = {
        'about_bar': about_bar,
        'image_restaurants': image_restaurants,
    }
    return render(request, context)


def MenuMaster(request):
    # imports
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    context = {
        'me_dia': me_dia, 'myinfo': myinfo, 'nav_header': nav_header,
    }
    return render(request, 'menu.html', context)
