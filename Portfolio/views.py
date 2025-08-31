from django.core.paginator import Paginator
from django.shortcuts import render

# Create your views here.
from Portfolio.models import PortfolioLists
from Services.models import Urban_Design, LandScape, External_Design, Interior_Design
from contact.models import Info
from vira.models import NavHeader, media


def masters(request):
    port_folio = PortfolioLists.objects.all()

    Urban_Des = Urban_Design.objects.all()
    Land_Scape = LandScape.objects.all()
    ExternalDesign = External_Design.objects.all()
    InteriorDesign = Interior_Design.objects.all()

    # imports
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    paginator = Paginator(port_folio, 24) # Show 25 contacts per page.
    page_number = request.GET.get('page')
    page_obj = paginator.get_page(page_number)

    context = {
        'port_folio': page_obj,
        'me_dia': me_dia, 'myinfo': myinfo, 'nav_header': nav_header,
        'Urban_Des': Urban_Des, 'Land_Scape': Land_Scape, 'ExternalDesign': ExternalDesign,
        'InteriorDesign': InteriorDesign,

    }
    return render(request, 'Portfolio.html', context)


def portfolio_detail(request, LSlug):
    portfolio_detail = PortfolioLists.objects.filter(LSlug=LSlug).first()
    # imports
    myinfo = Info.objects.first()
    nav_header = NavHeader.objects.all()
    me_dia = media.objects.all()

    context = {
        'portfolio_detail': portfolio_detail,
        'me_dia': me_dia, 'myinfo': myinfo, 'nav_header': nav_header,
    }
    return render(request, 'details.html', context)
