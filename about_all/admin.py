from django.contrib import admin

# Register your models here.
from about_all.models import About_Section


class About_SectionAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title Descriptions 1 EN ', {'fields': ['ASTitle_en', 'UsDescription_en']}),
        ('Title Descriptions 1 AR ', {'fields': ['ASTitle_ar', 'UsDescription_ar']}),

        ('Title Descriptions 2 EN ', {'fields': ['ASTitle_1_en', 'ASDescription_1_en']}),
        ('Title Descriptions 2 AR ', {'fields': ['ASTitle_1_ar', 'ASDescription_1_ar']}),

        ('Title Descriptions 3 EN ', {'fields': ['ASTitle_2_en', 'ASDescription_2_en']}),
        ('Title Descriptions 3 AR ', {'fields': ['ASTitle_2_ar', 'ASDescription_2_ar']}),

        ('Title Descriptions 4 EN ', {'fields': ['ASTitle_3_en', 'ASDescription_3_en']}),
        ('Title Descriptions 4 AR ', {'fields': ['ASTitle_3_ar', 'ASDescription_3_ar']}),

    ]
    # Show the below properties in the Business list
    list_display = ('ASTitle_en', 'UsDescription_en', 'id',)
    # Add filters for state and stars
    list_filter = ['ASTitle_en', 'id']
    # Make the Business list searchable by name
    search_fields = ['ASTitle_ar']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(About_Section, About_SectionAdmin)