from django.core.paginator import Paginator
from django.shortcuts import render

from Portfolio.models import PortfolioLists, Category_ars
from Pricing.models import Pricing_Card, Pricing_T
from about.models import About
from about_all.models import About_Section
from clients.models import Clients
from owner.models import Owner
from team.models import Team
from .models import FAQ, Pricing, Pricing1, Homepage, NavHeader, media

from contact.models import Info
from Services.models import Services_T, Urban_Design, ShowDetail, \
    LandScape, External_Design, Interior_Design
from Services import apps as django_apps

from django.utils.translation import gettext_lazy as _
from django.utils.translation import get_language, activate, gettext


# Create your views here.

def master(request):
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    home_page = Homepage.objects.all()
    clients_far = Clients.objects.all()
    owner_make = Owner.objects.all()
    t_eam = Team.objects.all()
    pricing = Pricing.objects.all()
    pricing1 = Pricing1.objects.all()
    F_aq = FAQ.objects.all()[:5]
    me_dia = media.objects.all()

    Services_name = Services_T.objects.all()

    Urban_Des = Urban_Design.objects.all()
    Show_Detail = ShowDetail.objects.all()

    Land_Scape = LandScape.objects.all()
    ExternalDesign = External_Design.objects.all()
    InteriorDesign = Interior_Design.objects.all()

    portfolio_er = PortfolioLists.objects.all()[:9]

    paginator = Paginator(clients_far, 6)  # Show 25 contacts per page.
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    about_all = About_Section.objects.all()
    about_bar = About.objects.all()

    PricingCard = Pricing_Card.objects.all()
    Pricing_Text = Pricing_T.objects.all()

    context = {
        'myinfo': myinfo, 'page_obj': page_obj, 'clients_far': clients_far,
        'owner_make': owner_make, 't_eam': t_eam,
        'F_aq': F_aq, 'pricing': pricing, 'pricing1': pricing1,
        'home_page': home_page, 'nav_header': nav_header, 'me_dia': me_dia, 'Services_name': Services_name,
        'Urban_Des': Urban_Des, 'Show_Detail': Show_Detail, 'Land_Scape': Land_Scape,
        'ExternalDesign': ExternalDesign, 'InteriorDesign': InteriorDesign, 'portfolio_er': portfolio_er,
        'PricingCard': PricingCard, 'Pricing_Text': Pricing_Text,

        'about_all': about_all, 'about_bar': about_bar,
    }
    return render(request, 'master.html', context)
