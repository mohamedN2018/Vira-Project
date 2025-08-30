from django.contrib import admin

# Register your models here.
from clients.models import Clients


class ClientsAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title __ اسم العميل', {'fields': ['CLTitle']}),
        ('image', {'fields': ['CLimage']}),

    ]


admin.site.register(Clients, ClientsAdmin)
