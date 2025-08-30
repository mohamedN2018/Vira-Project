from django.db import models


# Create your models here.

class Portfolio(models.Model):
    pass


class NavHeader(models.Model):
    NaLogo = models.CharField(max_length = 15, blank = True, verbose_name = 'Name Site __  اسم الموقع')
    NaLogo_ar = models.CharField(max_length = 15, blank = True, verbose_name = 'Name Site __   اسم الموقع عربي')
    NavImg = models.ImageField(upload_to="media/header", verbose_name="Logo site")

    class Meta:
        verbose_name = "NavHeader  __  Logo الموقع"
        verbose_name_plural = "NavHeader  __  Logo الموقع"

    def __str__(self):
        return self.NaLogo


class Homepage(models.Model):
    HoTitle_en = models.CharField(max_length = 50, blank = True, verbose_name = 'Title home page en __ وسم انجلزي ')
    HoTitle_ar = models.CharField(max_length = 50, blank = True, verbose_name = 'Title home page ar __ وسم عربي')
    HoDescription_en = models.TextField(max_length = 200, blank = True, verbose_name = 'Description en __  وصف انجلزي')
    HoDescription_ar = models.TextField(max_length = 200, blank = True, verbose_name = 'Description __  وصف عربي')

    class Meta:
        verbose_name = "Welcome To Homepage  __  الواجه الاماميه"
        verbose_name_plural = "Welcome To Homepage  __  الواجه الاماميه"

    def __str__(self):
        return self.HoTitle_en


class Section_old(models.Model):
    pass


class About(models.Model):
    pass


class Clients(models.Model):
    pass


class Services(models.Model):
    pass


class Owner(models.Model):
    pass


class Team(models.Model):
    pass


class Pricing(models.Model):
    pass


class Pricing1(Pricing):
    pass


class FAQ(models.Model):
    FaqName = models.CharField(max_length = 30, blank = True, verbose_name = 'Title Name Header')
    FaqTitle = models.CharField(max_length = 100, blank = True, verbose_name = 'Description Header')
    FaqNameOne = models.CharField(max_length = 100, blank = True, verbose_name = 'FAQ Name __  الاساله ')
    FaqDescription = models.TextField(max_length = 200, blank = True, verbose_name = 'FAQ Description __ الاجابه')

    class Meta:
        verbose_name = "FAQ  __  الاساله والاجوبه"
        verbose_name_plural = "FAQ  __  الاساله والاجوبه"

    def __str__(self):
        return self.FaqName


class media(models.Model):
    MTitle = models.CharField(max_length=200, blank=True,)
    whatsapp = models.URLField(blank = True, verbose_name = 'whatsapp')
    instagram = models.URLField(blank = True, verbose_name = 'instagram')
    twitter = models.URLField(blank = True, verbose_name = 'twitter')
    tiktok = models.URLField(blank = True, verbose_name = 'tiktok')
    snapchat = models.URLField(blank = True, verbose_name = 'snapchat')
    map = models.URLField(blank = True, verbose_name = 'map')





    def __str__(self):
        return self.MTitle
