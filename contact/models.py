from django.db import models


# Create your models here.


class Info(models.Model):
    place = models.CharField(max_length=30, blank=True, verbose_name='country')
    site = models.CharField(max_length=20, blank=True, verbose_name='City')
    place_ar = models.CharField(max_length=30, blank=True, verbose_name='country ar')
    site_ar = models.CharField(max_length=20, blank=True, verbose_name='City ar')
    phone1_number = models.CharField(max_length=20, blank=True, verbose_name='phone_number 1')
    phone2_number = models.CharField(max_length=20, blank=True, verbose_name='phones_number 2')
    email = models.EmailField(max_length=25, blank=True, verbose_name='email 1')
    email_2 = models.EmailField(max_length=30, blank=True, verbose_name='email 2')
    PuData = models.CharField(max_length=100, blank=True, verbose_name=' الموعيد العمل __ DATA ')
    PuData_ar = models.CharField(max_length=100, blank=True, verbose_name=' الموعيد العمل بال عربي __ DATA ')

    class Meta:
        verbose_name = "Info"
        verbose_name_plural = "Info"

    def __str__(self):
        return self.email
