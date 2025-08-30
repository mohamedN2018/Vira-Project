from django.db import models


# Create your models here.


class About_Section(models.Model):
    ASTitle_en = models.CharField(max_length = 100, blank = True, verbose_name = 'Title __ وسم ')
    ASTitle_ar = models.CharField(max_length = 100, blank = True, verbose_name = 'Title __ وسم ')
    UsDescription_en = models.TextField(max_length = 300, blank = True, verbose_name = 'Description __ وصف ')
    UsDescription_ar = models.TextField(max_length = 300, blank = True, verbose_name = 'Description __ وصف ')

    ASTitle_1_en = models.CharField(max_length = 50, blank = True, verbose_name = 'Title 1 __ وسم  ')
    ASTitle_1_ar = models.CharField(max_length = 50, blank = True, verbose_name = 'Title 1 __ وسم ')
    ASDescription_1_en = models.TextField(max_length = 300, blank = True, verbose_name = 'Description  1 __ وصف ')
    ASDescription_1_ar = models.TextField(max_length = 300, blank = True, verbose_name = 'Description 1 __ وصف ')

    ASTitle_2_en = models.CharField(max_length = 50, blank = True, verbose_name = 'Title  2 __ وسم  ')
    ASTitle_2_ar = models.CharField(max_length = 50, blank = True, verbose_name = 'Title  2 __ وسم ')
    ASDescription_2_en = models.TextField(max_length = 300, blank = True, verbose_name = 'Description 2 __ وصف ')
    ASDescription_2_ar = models.TextField(max_length = 300, blank = True, verbose_name = 'Description 2 __ وصف ')

    ASTitle_3_en = models.CharField(max_length = 50, blank = True, verbose_name = 'Title  3 __ وسم  ')
    ASTitle_3_ar = models.CharField(max_length = 50, blank = True, verbose_name = 'Title  3 __ وسم ')
    ASDescription_3_en = models.TextField(max_length = 300, blank = True, verbose_name = 'Description  3 __ وصف ')
    ASDescription_3_ar = models.TextField(max_length = 300, blank = True, verbose_name = 'Description  3 __ وصف ')

    class Meta:
        verbose_name = "About_Section  __  قصم المعلومات الاساسي"
        verbose_name_plural = "About_Section  __  قصم المعلومات الاساسي"

    def __str__(self):
        return self.ASTitle_en
