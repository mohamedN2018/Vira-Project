from email.mime import image

from django.contrib import admin

# Register your models here.
from about.models import About, imageRestaurants

from django.contrib import admin

# Register your models here.
from about_all.models import About_Section


class AboutAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title Descriptions 1 EN ', {'fields': ['AOTitle_1_en', 'AODescription_1_en']}),
        ('Title Descriptions 1 AR ', {'fields': ['AOTitle_1_ar', 'AODescription_1_ar']}),

        ('Title Descriptions 2 EN ', {'fields': ['AOTitle_2_en', 'AODescription_2_en']}),
        ('Title Descriptions 2 AR ', {'fields': ['AOTitle_2_ar', 'AODescription_2_ar']}),

        ('Title Descriptions 3 EN ', {'fields': ['AOTitle_3_en', 'AODescription_3_en']}),
        ('Title Descriptions 3 AR ', {'fields': ['AOTitle_3_ar', 'AODescription_3_ar']}),

        ('Title Descriptions 4 EN ', {'fields': ['AOTitle_4_en', 'AODescription_4_en']}),
        ('Title Descriptions 4 AR ', {'fields': ['AOTitle_4_ar', 'AODescription_4_ar']}),

        ('image ', {'fields': ['image']}),

    ]
    # Show the below properties in the Business list
    list_display = ('AOTitle_1_en', 'AODescription_1_en', 'id',)
    # Add filters for state and stars
    list_filter = ['AOTitle_1_en', 'id']
    # Make the Business list searchable by name
    search_fields = ['AOTitle_1_en']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(About, AboutAdmin)


class imageRestaurantsAdmin(admin.ModelAdmin):
    readonly_fields = ('date',)
admin.site.register(imageRestaurants , imageRestaurantsAdmin)


