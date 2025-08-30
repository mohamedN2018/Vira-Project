from django.db import models
from django.urls import reverse
from django.utils.text import slugify

from django.utils.translation import gettext_lazy as _


# Create your models here.


class Category_en(models.Model):
    Title = models.CharField(max_length=30, blank=True, null=True, verbose_name=_("Title __  وسم"))

    class Meta:
        verbose_name_plural = _("Category  __  قصم")

    def __str__(self):
        return self.Title


class Category_ars(models.Model):
    Titles = models.CharField(max_length=30, blank=True, null=True, verbose_name=_("Title __  وسم"))

    class Meta:
        verbose_name_plural = _("Category __   قسم")

    def __str__(self):
        return self.Titles


class PortfolioLists(models.Model):
    PLCategoryf = models.ForeignKey(Category_ars, on_delete=models.CASCADE)
    PSTitle = models.CharField(max_length=30, blank=True, null=True, verbose_name=_("Title Project EN  اسم المشروع"))
    PSTitle_ar = models.CharField(max_length=30, blank=True, null=True,
                                  verbose_name=_("Title Project AR __ اسم المشروع "))
    PSData = models.DateTimeField(blank=True, null=True, verbose_name=_("Data"))
    PSDescription = models.TextField(max_length=1000, blank=True, null=True, verbose_name=_("Description"))
    PSDescription_ar = models.TextField(max_length=1000, blank=True, null=True, verbose_name=_("وصف المشرواع"))
    PSImg = models.ImageField(upload_to="media/Portfolio",
                              verbose_name=_("images Projects Home | carousel |  __  صورة المشروع الاساسي"))

    PSImgUp_0 = models.ImageField(upload_to="media/Portfolio", blank=True, verbose_name=_("images 0 carousel"))
    PSImgUp_00 = models.ImageField(upload_to="media/Portfolio", blank=True, verbose_name=_("images 00 carousel"))

    PSImgUp_1 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 1 Height 19∶25"))
    PSImgUp_2 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 2 Height 19∶25"))
    PSImgUp_3 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 3 Height 19∶25"))
    PSImgUp_4 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 4 Width | Rendered aspect ratio:	1169∶750"))
    PSImgUp_5 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 5 Height 19∶25"))
    PSImgUp_6 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 6 Width | Height 19∶25"))
    PSImgUp_7 = models.ImageField(upload_to="media/Portfolio", blank=True, null=True,
                                  verbose_name=_("images 7 Width | Rendered aspect ratio:	1169∶750"))

    LSlug = models.SlugField(blank=True, null=True)

    def save(self, *args, **kwargs):
        self.LSlug = slugify(self.PSTitle)
        super(PortfolioLists, self).save(*args, **kwargs)

    class Meta:
        verbose_name_plural = _("Portfolio Add __  اضافة المشاريع")

    def __str__(self):
        return self.PSTitle
