from django.shortcuts import render

from Services.models import Urban_Design, External_Design, LandScape, Interior_Design
from vira.models import NavHeader, media
from .models import Info
from django.core.mail import send_mail
from django.conf import settings


# Create your views here.

def send_message(request):
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    Urban_Des = Urban_Design.objects.all()
    Land_Scape = LandScape.objects.all()
    ExternalDesign = External_Design.objects.all()
    InteriorDesign = Interior_Design.objects.all()

    if request.method == 'POST':
        subject = request.POST['subject']
        email = request.POST['email']
        message = request.POST['message']

        send_mail(
            email,
            message,
            subject,

            [settings.EMAIL_HOST_USER],
        )

    return render(request, 'contact/home_contact.html', {
        'myinfo': myinfo, 'nav_header': nav_header, 'me_dia': me_dia,
        'Urban_Des': Urban_Des, 'Land_Scape': Land_Scape, 'ExternalDesign': ExternalDesign, 'InteriorDesign': InteriorDesign,
    })
