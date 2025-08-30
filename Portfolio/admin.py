from django.contrib import admin

# Register your models here.
from Portfolio.models import Category_ars, PortfolioLists


# Category_ars
class Category_arsAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Titles ', {'fields': ['Titles']}),
    ]
    # Show the below properties in the Business list
    list_display = ('Titles', 'id',)
    # Add filters for state and stars
    list_filter = ['Titles', 'id']
    # Make the Business list searchable by name
    search_fields = ['Titles']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(Category_ars, Category_arsAdmin)


# End Category_ars

#
class PortfolioListsAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Category ', {'fields': ['PLCategoryf']}),
        (' Title Project EN & AR ', {'fields': ['PSTitle', 'PSTitle_ar']}),
        (' Data ', {'fields': ['PSData']}),

        (' Title Project EN & AR ', {'fields': ['PSDescription', 'PSDescription_ar']}),
        (' image main ', {'fields': ['PSImg']}),
        (' image carousel ', {'fields': ['PSImgUp_0', 'PSImgUp_00']}),

        (' image col 1 section 2', {'fields': ['PSImgUp_1', 'PSImgUp_2', 'PSImgUp_3']}),
        (' image center section 3', {'fields': ['PSImgUp_4']}),

        (' image col 2 section 4', {'fields': ['PSImgUp_5', 'PSImgUp_6']}),
        (' image button section 5', {'fields': ['PSImgUp_7']}),

    ]
    # Show the below properties in the Business list
    list_display = ('PSTitle', 'PSDescription', 'id')
    # Add filters for state and stars
    list_filter = ['PSTitle', 'id']
    # Make the Business list searchable by name
    search_fields = ['PSTitle']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(PortfolioLists, PortfolioListsAdmin)
#
