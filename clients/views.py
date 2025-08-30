from django.shortcuts import render

# Create your views here.
from clients.models import Clients


def master(request):
    clients_far = Clients.objects.all()
    context = {'clients_far': clients_far}
    return render(request, '', context)
