from django.shortcuts import render

# Create your views here.
from about_all.models import About_Section


def master(request):
    about_all = About_Section.objects.all()
    context = {'about_all': about_all}
    return render(request, context)