from django.db import models
from django.utils.translation import gettext_lazy as _

# Create your models here.


class Clients(models.Model):
    CLTitle = models.CharField(max_length = 50, verbose_name = _('Title'))
    CLimage = models.ImageField(upload_to='clients', blank=True, verbose_name='image')

    class Meta:
        verbose_name = "Client  __  العملاء المتعامل معه الشركه"
        verbose_name_plural = "Client  __  العملاء المتعامل معه الشركه"

    def __str__(self):
        return self.CLTitle