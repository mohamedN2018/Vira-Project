from django.contrib import admin

# Register your models here.
from owner.models import Owner


class OwnerAdmin(admin.ModelAdmin):
    fieldsets = [
        ('image', {'fields': ['image']}),
        ('Title', {'fields': ['OwTitle']}),
        ('Experience', {'fields': ['OwExperience']}),
        ('Description', {'fields': ['OwDesc']}),
    ]
    fieldsets += [
        ('Title -- Arabic', {'fields': ['OwTitle_ar']}),
        ('Experience -- Arabic', {'fields': ['OwExperience_ar']}),
        ('Description -- Arabic', {'fields': ['OwDesc_ar']}),
    ]


admin.site.register(Owner, OwnerAdmin)
