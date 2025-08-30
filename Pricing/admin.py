from django.contrib import admin

# Register your models here.
from Pricing.models import Pricing_T, Pricing_Card, Currency_symbol, spaces


class Pricing_TAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title_T en __ وسم الواجهه الرئسي ', {'fields': ['PrTitle_en']}),
        ('Title_T ar __ وسم الواجهه الرئسي ', {'fields': ['PrTitle_ar']}),
        ('Description en __ وصف الواجهه الرئسي ', {'fields': ['PrDescription_en']}),
        ('Description ar __ وصف الواجهه الرئسي ', {'fields': ['PrDescription_ar']}),

    ]


# Pricing T
admin.site.register(Pricing_T, Pricing_TAdmin)


class Pricing_CardAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Title EN __ وسم', {'fields': ['PrTitle_en']}),
        ('Title AR __ وسم', {'fields': ['PrTitle_ar']}),

        ('Pricing __ الاسعار', {'fields': ['PrPricing']}),
        ('Currency symbol __ اختار العمله ', {'fields': ['Currency_symbol']}),
        ('spaces __  اختار المساحات  ', {'fields': ['PRSpaces']}),

        ('Description en __ وصف الاسعار ', {'fields': ['PrDescription_en']}),
        ('Description ar __ وصف الاسعار ', {'fields': ['PrDescription_ar']}),

    ]


# Pricing Card
admin.site.register(Pricing_Card, Pricing_CardAdmin)


class Currency_symbolAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Currency symbol __  اسم العملات ', {'fields': ['Currency_symbol']}),
    ]


# Currency symbol
admin.site.register(Currency_symbol, Currency_symbolAdmin)


class spacesAdmin(admin.ModelAdmin):
    fieldsets = [
        ('Spaces __ المساحات', {'fields': ['SSpaces']}),
    ]


# spaces
admin.site.register(spaces, spacesAdmin)
