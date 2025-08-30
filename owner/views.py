from django.shortcuts import render

# Create your views here.
from owner.models import Owner


def master(request):
    owner_make = Owner.objects.all()

    context = {'owner_make': owner_make}
    return render(request, 'owner.html', context)
