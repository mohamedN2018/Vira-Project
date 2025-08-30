from django.shortcuts import render

# Create your views here.
from team.models import Team


def master(request):
    t_eam = Team.objects.all()

    context = {'t_eam': t_eam}
    return render(request, '', context)
