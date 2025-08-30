from django.shortcuts import render


# Create your views here.
from Pricing.models import Pricing_Card, Pricing_T


def master(request):
    PricingCard = Pricing_Card.objects.all()
    Pricing_Text = Pricing_T.objects.all()

    context = {
        'PricingCard': PricingCard, 'Pricing_Text': Pricing_Text
    }
    return render(request, '', context)
