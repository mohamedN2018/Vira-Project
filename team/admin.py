from django.contrib import admin

# Register your models here.
from team.models import MediaTeam


class MediaTeamAdmin(admin.ModelAdmin):
    fieldsets = [
        ('image', {'fields': ['TImg']}),
        ('Title & Experience', {'fields': ['TeTitle', 'TeExperience']}),
    ]
    fieldsets += [
        ('Title & Experience -- Arabic', {'fields': ['TeTitle_ar', 'TeExperience_ar']}),
    ]


admin.site.register(MediaTeam, MediaTeamAdmin)