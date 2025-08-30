from django.db import models
from django.utils.translation import gettext_lazy as _
from django.utils.translation import get_language, activate, gettext


# Create your models here.

def image_upload(instance, filename):
    imagename, extension = filename.split(".")
    return "jobs/%s.%s" % (instance.id, extension)


# Services_T

class Services_T(models.Model):
    TiTitle = models.CharField(max_length=100, blank=True, verbose_name=_('Title name EN '))
    TiTitle_ar = models.CharField(max_length=100, blank=True, verbose_name=_('Title name  AR'))

    TiDesc = models.CharField(max_length=200, blank=True, verbose_name=_('Description EN'))
    TiDesc_ar = models.CharField(max_length=200, blank=True, verbose_name=_('Description AR'))

    class Meta:
        verbose_name_plural = _("Services_Text Home __ الصفحه الرئسيه اسم و الوصف")

    def __str__(self):
        return self.TiTitle


# Urban_Design

class Urban_Design(models.Model):
    UName = models.CharField(max_length=25, blank=True, verbose_name=' Name Services ')
    UName_ar = models.CharField(max_length=25, blank=True, verbose_name=' اسم الخدمه ')

    UDescriptions = models.CharField(max_length=300, blank=True, verbose_name=' Descriptions Services ')
    UDescriptions_ar = models.CharField(max_length=300, blank=True, verbose_name=' وصف الخدمه  ')

    UDImg_1 = models.ImageField(upload_to='media/Urban Design', blank=True, null=True, verbose_name=' Images ')

    class Meta:
        verbose_name_plural = "Urban Design __ الصفحه الرئسيه لل التصميم الحضري "

    def __str__(self):
        return self.UName


class ShowDetail(models.Model):
    SDImg_1 = models.ImageField(upload_to='media/ShowDetail', blank=True, null=True, verbose_name='Images 1')

    SDDescriptions = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions  EN __ وصف الخدمه')
    SDDescriptions_ar = models.TextField(max_length=1500, blank=True,verbose_name='Descriptions  AR __وصف الخدمه ')

    SDImg_2 = models.ImageField(upload_to='media/ShowDetail', blank=True, null=True, verbose_name='Images 2')
    SDTitle_1 = models.CharField(max_length=200, blank=True, verbose_name='Title Project EN -- 1')
    SDTitle_1_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR -- ')
    SDDescriptions_1 = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions EN __ وصف الخدمه')
    SDDescriptions_1_ar = models.TextField(max_length=1500, blank=True,verbose_name='Descriptions AR __ وصف الخدمه ')

    SDImg_3 = models.ImageField(upload_to='media/ShowDetail', blank=True, null=True, verbose_name='Images 3')

    SDImg_4 = models.ImageField(upload_to='media/ShowDetail', blank=True, null=True, verbose_name='Images 4')
    SDTitle_2 = models.CharField(max_length=200, blank=True, verbose_name='Title Project 2 ')
    SDTitle_2_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project 2')
    SDDescriptions_2 = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions EN __ وصف الخدمه')
    SDDescriptions_2_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions AR __ وصف الخدمه ')

    class Meta:
        verbose_name_plural = "Urban Design Detail __ تفاصيل  "

    def __str__(self):
        return self.SDTitle_1


# LandScape

class LandScape(models.Model):
    LSName = models.CharField(max_length=30, verbose_name=_('Name '))
    LSName_ar = models.CharField(max_length=30, verbose_name=_('العنوان عربي'))

    LSDescription = models.TextField(max_length=300, verbose_name='Descriptions EN ')
    LSDescription_ar = models.TextField(max_length=300, verbose_name='Descriptions AR ')

    LSImg_1 = models.ImageField(upload_to='media/LandScape', blank=True, null=True, verbose_name='Images 1')

    class Meta:
        verbose_name_plural = "Land Scape  __ الصفحه الرئسيه لل المناظر الطبيعيه"

    def __str__(self):
        return self.LSName


class LandScapeDetail(models.Model):
    LSImg_1 = models.ImageField(upload_to='media/LandScapeDetail', blank=True, null=True, verbose_name='Images 1')
    LSDescriptions = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions EN __ وصف الخدمه')
    LSDescriptions_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions AR  __ وصف الخدمه ')

    LSImg_2 = models.ImageField(upload_to='media/LandScapeDetail', blank=True, null=True, verbose_name='Images 1')
    LSTitle_1 = models.CharField(max_length=200, blank=True, verbose_name='Title Project EN ')
    LSTitle_1_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR ')
    LSDescriptions_1 = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions EN ')
    LSDescriptions_1_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions AR ')

    LSImg_3 = models.ImageField(upload_to='media/LandScapeDetail', blank=True, null=True, verbose_name='Images 3')

    LSImg_4 = models.ImageField(upload_to='media/LandScapeDetail', blank=True, null=True, verbose_name='Images 4')
    LSTitle_2 = models.CharField(max_length=200, blank=True, verbose_name='Title Project EN ')
    LSTitle_2_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR ')
    LSDescriptions_2 = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions EN ')
    LSDescriptions_2_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions  AR')

    class Meta:
        verbose_name_plural = "Land Scape  __  تفاصيل المناظر الطبيعيه"

    def __str__(self):
        return self.LSTitle_1


# External_Design

class External_Design(models.Model):
    EDName = models.CharField(max_length=30)
    EDName_ar = models.CharField(max_length=30)
    EDDescription = models.TextField(max_length=300, verbose_name='Descriptions EN')
    EDDescription_ar = models.TextField(max_length=300, verbose_name='Descriptions AR')

    EDImg_1 = models.ImageField(upload_to='media/External_Design', blank=True, null=True, verbose_name='Images 1')

    class Meta:
        verbose_name_plural = "External Design  __ الصفحه الرئسيه  "

    def __str__(self):
        return self.EDName


class ExternalDesignDetail(models.Model):
    EDDImg_1 = models.ImageField(upload_to='media/ExternalDesignDetail', blank=True, null=True, verbose_name='Images 1')
    EDDDescriptions = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions  EN')
    EDDDescriptions_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions AR ')

    EDDImg_2 = models.ImageField(upload_to='media/ExternalDesignDetail', blank=True, null=True, verbose_name='Images 2')
    EDDTitle_1 = models.CharField(max_length=200, blank=True, verbose_name='Title Project -- EN')
    EDDTitle_1_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR')
    EDDDescriptions_1 = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions EN')
    EDDDescriptions_1_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions  AR ')

    EDDImg_3 = models.ImageField(upload_to='media/ExternalDesignDetail', blank=True, null=True, verbose_name='Images 3')

    EDDImg_4 = models.ImageField(upload_to='media/ExternalDesignDetail', blank=True, null=True, verbose_name='Images 4')
    EDDTitle_2 = models.CharField(max_length=200, blank=True, verbose_name='Title Project EN ')
    EDDTitle_2_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR ')
    EDDDescriptions_2_en = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions  EN ')
    EDDDescriptions_2_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions  AR ')

    class Meta:
        verbose_name_plural = " External Design  __  تفاصيل "

    def __str__(self):
        return self.EDDTitle_1


# Interior_Design

class Interior_Design(models.Model):
    IDName = models.CharField(max_length=30)
    IDName_ar = models.CharField(max_length=30)
    IDDescription = models.TextField(max_length=300, verbose_name='Descriptions EN')
    IDDescription_ar = models.TextField(max_length=300, verbose_name='Descriptions AR')

    IDImg_1 = models.ImageField(upload_to='media/Interior_Design', blank=True, null=True, verbose_name='Images 1')

    class Meta:
        verbose_name_plural = "Interior Design  __  السفحه الرئسيه "

    def __str__(self):
        return self.IDName


class Interior_DesignDetail(models.Model):
    IDDImg_1 = models.ImageField(upload_to='media/Interior_DesignDetail', blank=True, null=True,verbose_name='Images 1')
    IDDDescriptions = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions Services EN')
    IDDDescriptions_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions Services AR')

    IDDImg_2 = models.ImageField(upload_to='media/Interior_DesignDetail', blank=True, null=True,  verbose_name='Images 2')
    IDDTitle_1 = models.CharField(max_length=200, blank=True, verbose_name='Title Project EN ')
    IDDTitle_1_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR ')
    IDDDescriptions_1 = models.TextField(max_length=1500, blank=True,verbose_name='Descriptions Services EN')
    IDDDescriptions_1_ar = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions Services AR')

    IDDImg_3 = models.ImageField(upload_to='media/Interior_DesignDetail', blank=True, null=True, verbose_name='Images 3')

    IDDImg_4 = models.ImageField(upload_to='media/Interior_DesignDetail', blank=True, null=True, verbose_name='Images 4')
    IDDTitle_2 = models.CharField(max_length=200, blank=True, verbose_name='Title Project EN ')
    IDDTitle_2_ar = models.CharField(max_length=200, blank=True, verbose_name='Title Project AR ')
    IDDDescriptions_2 = models.TextField(max_length=1500, blank=True, verbose_name='Descriptions Services EN ')
    IDDDescriptions_2_ar = models.TextField(max_length=1500, blank=True,verbose_name='Descriptions Services AR ')

    class Meta:
        verbose_name_plural = "Interior Design  __  تفاصيل "

    def __str__(self):
        return self.IDDTitle_1
