from django.db import models
from django.utils.translation import gettext_lazy as _

# Create your models here.


class Currency_symbol(models.Model):
    Currency_symbol = models.CharField(max_length = 10, blank = True, null = True, verbose_name = _('Currency symbol'))

    class Meta:
        verbose_name_plural = _("Currency symbol")

    def __str__(self):
        return self.Currency_symbol


class spaces(models.Model):
    SSpaces = models.CharField(max_length = 10, blank = True, null = True, verbose_name = _('Spaces'))

    class Meta:
        verbose_name_plural = _("spaces")

    def __str__(self):
        return self.SSpaces


class Pricing_T(models.Model):
    PrTitle_en = models.CharField(max_length=50, blank=True, null = True, verbose_name=_('Title_T en'))
    PrTitle_ar = models.CharField(max_length=50, blank=True, null = True, verbose_name=_('Title_T ar '))

    PrDescription_en = models.TextField(max_length=200, blank=True, null = True, verbose_name=_('Description en'))
    PrDescription_ar = models.TextField(max_length=200, blank=True, null = True, verbose_name=_('Description ar'))

    class Meta:
        verbose_name = _("Pricing_Text_Home")
        verbose_name_plural = _(" Pricing_Text_Home")

    def __str__(self):
        return self.PrTitle_en


class Pricing_Card(models.Model):
    PrTitle_en = models.CharField(max_length=20, blank=True, verbose_name=_('Title EN'))
    PrTitle_ar = models.CharField(max_length=20, blank=True, verbose_name=_('Title AR'))

    PrPricing = models.CharField(max_length=7, verbose_name='Pricing')
    Currency_symbol = models.ForeignKey(Currency_symbol, on_delete = models.CASCADE, verbose_name = 'Currency symbol')
    PRSpaces = models.ForeignKey(spaces, on_delete = models.CASCADE, verbose_name = 'spaces')

    PrDescription_en = models.TextField(max_length=200, verbose_name=_('Description EN'))
    PrDescription_ar = models.TextField(max_length=200, verbose_name=_('Description AR'))

    class Meta:
        verbose_name = _("Pricing Card Detail")
        verbose_name_plural = _("Pricing Card Detail")

    def __str__(self):
        return self.PrTitle_en

