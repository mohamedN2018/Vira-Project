from django.db import models
from django.utils.translation import gettext_lazy as _


# Create your models here.


class Owner(models.Model):
    image = models.ImageField(upload_to='Owner', verbose_name='image __  صوره المالكين')
    ImgBacHome = models.ImageField(upload_to='Owner/ImgBacHome', verbose_name='image __  صوره الخلفيه الرائسيه')
    OwTitle = models.CharField(max_length=40, verbose_name='Name __ اسم ')
    OwTitle_ar = models.CharField(max_length=40, verbose_name='Name __  اسم عربي ')
    OwExperience = models.CharField(max_length=30, verbose_name='Experience __ الخبره ')
    OwExperience_ar = models.CharField(max_length=30, verbose_name='Experience __  الخبره بال عربي ')
    OwDesc = models.CharField(max_length=150, verbose_name='Description __ وصف')
    OwDesc_ar = models.CharField(max_length=150, verbose_name='Description __ وصف بال عربي')

    class Meta:
        verbose_name = "Owner __ مالكين الشركه "
        verbose_name_plural = "Owner __ مالكين الشركه "

    def __str__(self):
        return self.OwTitle
