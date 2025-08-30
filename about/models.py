from django.db import models

# Create your models here.


class About(models.Model):
    image = models.ImageField(upload_to='About')

    AOTitle_1_en = models.CharField(max_length=100, blank=True, verbose_name='Title 1 __ وسم ')
    AOTitle_1_ar = models.CharField(max_length=100, blank=True, verbose_name='Title 1 __ وسم ')
    AODescription_1_en = models.TextField(max_length=300, blank=True, verbose_name='Description 1 __ وصف ')
    AODescription_1_ar = models.TextField(max_length=300, blank=True, verbose_name='Description 1 __ وصف ')

    AOTitle_2_en = models.CharField(max_length=100, blank=True, verbose_name='Title 2  __ وسم ')
    AOTitle_2_ar = models.CharField(max_length=100, blank=True, verbose_name='Title 2  __ وسم ')
    AODescription_2_en = models.TextField(max_length=300, blank=True, verbose_name='Description 2 __ وصف ')
    AODescription_2_ar = models.TextField(max_length=300, blank=True, verbose_name='Description 2  __ وصف ')

    AOTitle_3_en = models.CharField(max_length=100, blank=True, verbose_name='Title 3  __ وسم ')
    AOTitle_3_ar = models.CharField(max_length=100, blank=True, verbose_name='Title 3  __ وسم ')
    AODescription_3_en = models.TextField(max_length=300, blank=True, verbose_name='Description 3  __ وصف ')
    AODescription_3_ar = models.TextField(max_length=300, blank=True, verbose_name='Description 3  __ وصف ')

    AOTitle_4_en = models.CharField(max_length=100, blank=True, verbose_name='Title 4  __ وسم ')
    AOTitle_4_ar = models.CharField(max_length=100, blank=True, verbose_name='Title 4  __ وسم ')
    AODescription_4_en = models.TextField(max_length=300, blank=True, verbose_name='Description 4  __ وصف ')
    AODescription_4_ar = models.TextField(max_length=300, blank=True, verbose_name='Description 4  __ وصف ')

    class Meta:
        verbose_name = "About  __  حول الشركه"
        verbose_name_plural = "About  __  حول الشركه"

    def __str__(self):
        return self.AOTitle_1_en


class imageRestaurants(models.Model):
    date = models.DateTimeField(editable=True, auto_now_add=True)
    titleImg = models.CharField(max_length=150, blank=True)
    image = models.ImageField(upload_to='imageRestaurants')

    class Meta:
        verbose_name = "image Restaurants"
        verbose_name_plural = "image Restaurants"

    def __str__(self):
        return self.titleImg
