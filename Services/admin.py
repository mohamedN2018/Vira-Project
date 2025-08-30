from django.contrib import admin

# Register your models here.
from Services.models import Services_T, Urban_Design, ShowDetail, LandScape, LandScapeDetail, External_Design, \
    ExternalDesignDetail, Interior_Design, Interior_DesignDetail


# Home page
class Services_TAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title EN & AR __ وسم عربي و انجلزي ', {'fields': ['TiTitle', 'TiTitle_ar']}),
        ('Title EN & AR __ وصف عربي و انجلزي ', {'fields': ['TiDesc', 'TiDesc_ar']}),
    ]


admin.site.register(Services_T, Services_TAdmin)


# End Home page

# Urban Design
class Urban_DesignAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Name Services __ اسم الخدمه ', {'fields': ['UName', 'UName_ar']}),
        (' Description Services EN & AR   __ وصف الخدمه', {'fields': ['UDescriptions', 'UDescriptions_ar']}),
        (' Images ', {'fields': ['UDImg_1']}),
    ]
    # Show the below properties in the Business list
    list_display = ('UName', 'UDescriptions', 'id',)
    # Add filters for state and stars
    list_filter = ['UName', 'id']
    # Make the Business list searchable by name
    search_fields = ['UName']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(Urban_Design, Urban_DesignAdmin)


# detail Urban_Design
class ShowDetailAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Images Home page __ Section 1 ', {'fields': ['SDImg_1']}),
        (' Description Detail AR & EN ___ Section 1', {'fields': ['SDDescriptions', 'SDDescriptions_ar']}),

        (' Title Project EN & AR  __ وصف الخدمه ___ Section 2', {'fields': ['SDTitle_1', 'SDTitle_1_ar']}),
        (' Description EN & AR ___ Section 2', {'fields': ['SDDescriptions_1', 'SDDescriptions_1_ar']}),
        (' Images 2  ___ Section 2 ', {'fields': ['SDImg_2']}),

        (' Images 3 ___ one', {'fields': ['SDImg_3']}),

        (' Title Project EN & AR   __ وصف الخدمه  ___  Section 3', {'fields': ['SDTitle_2', 'SDTitle_2_ar']}),
        (
            ' Description EN & AR __ وصف الخدمه   ___  Section 3',
            {'fields': ['SDDescriptions_2', 'SDDescriptions_2_ar']}),
        (' Images 4  ___  Section 3', {'fields': ['SDImg_4']}),

    ]
    # Show the below properties in the Business list
    list_display = ('SDTitle_1', 'SDDescriptions', 'id',)
    # Add filters for state and stars
    list_filter = ['SDTitle_1', 'id']
    # Make the Business list searchable by name
    search_fields = ['SDTitle_1']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(ShowDetail, ShowDetailAdmin)


# end Urban Design

# LandScape
class LandScapeAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Name Services __ اسم الخدمه ', {'fields': ['LSName', 'LSName_ar']}),
        (' Description Services EN & AR   __ وصف الخدمه', {'fields': ['LSDescription', 'LSDescription_ar']}),
        (' Images ', {'fields': ['LSImg_1']}),
    ]
    # Show the below properties in the Business list
    list_display = ('LSName', 'LSDescription', 'id',)
    # Add filters for state and stars
    list_filter = ['LSName', 'id']
    # Make the Business list searchable by name
    search_fields = ['LSName']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(LandScape, LandScapeAdmin)


class LandScapeDetailAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Images Home page __ Section 1 ', {'fields': ['LSImg_1']}),
        (' Description Detail AR & EN ___ Section 1', {'fields': ['LSDescriptions', 'LSDescriptions_ar']}),

        (' Title Project EN & AR  __ وصف الخدمه ___ Section 2', {'fields': ['LSTitle_1', 'LSTitle_1_ar']}),
        (' Description EN & AR ___ Section 2', {'fields': ['LSDescriptions_1', 'LSDescriptions_1_ar']}),
        (' Images 2  ___ Section 2 ', {'fields': ['LSImg_2']}),

        (' Images 3 ___ one', {'fields': ['LSImg_3']}),

        (' Title Project EN & AR   __ وصف الخدمه  ___  Section 3', {'fields': ['LSTitle_2', 'LSTitle_2_ar']}),
        (
            ' Description EN & AR __ وصف الخدمه   ___  Section 3',
            {'fields': ['LSDescriptions_2', 'LSDescriptions_2_ar']}),
        (' Images 4  ___  Section 3', {'fields': ['LSImg_4']}),

    ]
    # Show the below properties in the Business list
    list_display = ('LSTitle_1', 'LSDescriptions_1_ar', 'id',)
    # Add filters for state and stars
    list_filter = ['LSTitle_1', 'id']
    # Make the Business list searchable by name
    search_fields = ['LSTitle_1']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(LandScapeDetail, LandScapeDetailAdmin)
# End LandScape


# External_Design
class External_DesignAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Name Services __ اسم الخدمه ', {'fields': ['EDName', 'EDName_ar']}),
        (' Description Services EN & AR   __ وصف الخدمه', {'fields': ['EDDescription', 'EDDescription_ar']}),
        (' Images ', {'fields': ['EDImg_1']}),
    ]
    # Show the below properties in the Business list
    list_display = ('EDName', 'EDDescription', 'id',)
    # Add filters for state and stars
    list_filter = ['EDName', 'id']
    # Make the Business list searchable by name
    search_fields = ['EDName']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(External_Design, External_DesignAdmin)


class ExternalDesignDetailAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Images Home page __ Section 1 ', {'fields': ['EDDImg_1']}),
        (' Description Detail AR & EN ___ Section 1', {'fields': ['EDDDescriptions', 'EDDDescriptions_ar']}),

        (' Title Project EN & AR  __ وصف الخدمه ___ Section 2', {'fields': ['EDDTitle_1', 'EDDTitle_1_ar']}),
        (' Description EN & AR ___ Section 2', {'fields': ['EDDDescriptions_1', 'EDDDescriptions_1_ar']}),
        (' Images 2  ___ Section 2 ', {'fields': ['EDDImg_2']}),

        (' Images 3 ___ one', {'fields': ['EDDImg_3']}),

        (' Title Project EN & AR   __ وصف الخدمه  ___  Section 3', {'fields': ['EDDTitle_2', 'EDDTitle_2_ar']}),
        (' Description EN & AR __ وصف الخدمه   ___  Section 3', {'fields': ['EDDDescriptions_2_en', 'EDDDescriptions_2_ar']}),
        (' Images 4  ___  Section 3', {'fields': ['EDDImg_4']}),

    ]
    # Show the below properties in the Business list
    list_display = ('EDDTitle_1', 'EDDDescriptions_1', 'id',)
    # Add filters for state and stars
    list_filter = ['EDDTitle_1', 'id']
    # Make the Business list searchable by name
    search_fields = ['EDDTitle_1']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(ExternalDesignDetail, ExternalDesignDetailAdmin)
# End External_Design


# Interior_Design
class Interior_DesignAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Name Services __ اسم الخدمه ', {'fields': ['IDName', 'IDName_ar']}),
        (' Description Services EN & AR   __ وصف الخدمه', {'fields': ['IDDescription', 'IDDescription_ar']}),
        (' Images ', {'fields': ['IDImg_1']}),
    ]
    # Show the below properties in the Business list
    list_display = ('IDName', 'IDDescription', 'id',)
    # Add filters for state and stars
    list_filter = ['IDName', 'id']
    # Make the Business list searchable by name
    search_fields = ['IDName']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(Interior_Design, Interior_DesignAdmin)


class Interior_DesignDetailAdmin(admin.ModelAdmin):
    fieldsets = [
        (' Images Home page __ Section 1 ', {'fields': ['IDDImg_1']}),
        (' Description Detail AR & EN ___ Section 1', {'fields': ['IDDDescriptions', 'IDDDescriptions_ar']}),

        (' Title Project EN & AR  __ وصف الخدمه ___ Section 2', {'fields': ['IDDTitle_1', 'IDDTitle_1_ar']}),
        (' Description EN & AR ___ Section 2', {'fields': ['IDDDescriptions_1', 'IDDDescriptions_1_ar']}),
        (' Images 2  ___ Section 2 ', {'fields': ['IDDImg_2']}),

        (' Images 3 ___ one', {'fields': ['IDDImg_3']}),

        (' Title Project EN & AR   __ وصف الخدمه  ___  Section 3', {'fields': ['IDDTitle_2', 'IDDTitle_2_ar']}),
        (' Description EN & AR __ وصف الخدمه   ___  Section 3', {'fields': ['IDDDescriptions_2', 'IDDDescriptions_2_ar']}),
        (' Images 4  ___  Section 3', {'fields': ['IDDImg_4']}),

    ]
    # Show the below properties in the Business list
    list_display = ( 'id', 'IDDTitle_1', 'IDDDescriptions',)
    # Add filters for state and stars
    list_filter = ['IDDTitle_1', 'id']
    # Make the Business list searchable by name
    search_fields = ['IDDTitle_1']
    # We don't want ids showing up
    exclude = ['id']


admin.site.register(Interior_DesignDetail, Interior_DesignDetailAdmin)
