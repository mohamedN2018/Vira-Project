from django.shortcuts import render

# Create your views here.
from Services.models import Urban_Design, ShowDetail, \
    LandScape, LandScapeDetail, ExternalDesignDetail, \
    External_Design, Interior_DesignDetail
from contact.models import Info
from vira.models import NavHeader, media

from django.utils.translation import gettext_lazy as _
from django.utils.translation import get_language, activate, gettext

from vira.views import master


def Se_services(request):
    Urban_Des = Urban_Design.objects.all(language='ar')
    Land_Scape = LandScape.objects.all()
    ExternalDesign = External_Design.objects.all()
    InteriorDesign = Interior_Design.objects.all()

    context = {
        'Urban_Des': Urban_Des, 'Land_Scape': Land_Scape,
        'ExternalDesign': ExternalDesign,
        'InteriorDesign': InteriorDesign,

    }
    return render(request, 'Services.html', context)


def Urban_Desg(request):
    Urban_Des = Urban_Design.objects.all()

    Land_Scape = LandScape.objects.all()
    ExternalDesign = External_Design.objects.all()

    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()
    Show_detail = ShowDetail.objects.all()

    context = {
        'Urban_Des': Urban_Des, 'myinfo': myinfo,
        'nav_header': nav_header,
        'me_dia': me_dia, 'Show_detail': Show_detail,
        'ExternalDesign': ExternalDesign,
        'Land_Scape': Land_Scape,
    }
    return render(request, 'include/urban_design.html', context)


def landscape(request):
    Land_Scape = LandScape.objects.all()
    landscape = LandScapeDetail.objects.all()
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    Urban_Des = Urban_Design.objects.all()
    ExternalDesign = External_Design.objects.all()

    context = {
        'Land_Scape': Land_Scape, 'me_dia': me_dia,
        'nav_header': nav_header, 'myinfo': myinfo,
        'landscape': landscape,
        'ExternalDesign': ExternalDesign,
        'Urban_Des': Urban_Des

    }
    return render(request, 'include/land_scape.html', context)


def External__Design(request):
    External_Design_Detail = ExternalDesignDetail.objects.all()

    Land_Scape = LandScape.objects.all()
    Urban_Des = Urban_Design.objects.all()

    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    context = {
        'External_Design_Detail': External_Design_Detail,

        'me_dia': me_dia, 'myinfo': myinfo, 'nav_header': nav_header,

        'Urban_Des': Urban_Des, 'Land_Scape': Land_Scape,
    }
    return render(request, 'include/External_Design.html', context)


def Interior_Design(request):
    Interior_Design_Detail = Interior_DesignDetail.objects.all()

    Urban_Des = Urban_Design.objects.all()
    Land_Scape = LandScape.objects.all()
    ExternalDesign = External_Design.objects.all()
    
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    context = {
        'me_dia': me_dia, 'myinfo': myinfo, 'nav_header': nav_header,
        'Interior_Design_Detail': Interior_Design_Detail,
        'Urban_Des': Urban_Des,
        'Land_Scape': Land_Scape,
        'ExternalDesign': ExternalDesign,
    }
    return render(request, 'include/Interior_Design.html', context)
