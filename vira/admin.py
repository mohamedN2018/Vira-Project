from django.contrib import admin

# Register your models here.
from vira.models import FAQ, Homepage, NavHeader, media


admin.site.register(NavHeader)


class HomepageAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title home page', {'fields': ['HoTitle_en', 'HoTitle_ar']}),
        ('Description home page', {'fields': ['HoDescription_en', 'HoDescription_ar']}),
    ]


admin.site.register(Homepage, HomepageAdmin)


admin.site.register(media)
