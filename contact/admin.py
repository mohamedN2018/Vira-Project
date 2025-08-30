from django.contrib import admin

# Register your models here.
from .models import Info


class InfoAdmin(admin.ModelAdmin):
    fieldsets = [
        (' location  ', {'fields': ['place', 'site']}),
        (' phone number ', {'fields': ['phone1_number', 'phone2_number']}),
        (' email ', {'fields': ['email', 'email_2']}),
        (' Data EN & AR ', {'fields': ['PuData', 'PuData_ar']}),

    ]
    # Show the below properties in the Business list
    list_display = ('place', 'email', 'phone1_number', 'id',)
    # Add filters for state and stars
    list_filter = ['email', 'id']
    # Make the Business list searchable by name
    search_fields = ['email']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(Info, InfoAdmin)

