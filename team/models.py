from django.db import models


# Create your models here.


class Team(models.Model):
    TImg = models.ImageField(upload_to='Team', verbose_name='image')
    TeTitle = models.CharField(max_length=15, verbose_name='Title')
    TeTitle_ar = models.CharField(max_length=15, verbose_name='Title arabic')
    TeExperience = models.CharField(max_length=20, verbose_name='Experience')
    TeExperience_ar = models.CharField(max_length=20, verbose_name='Experience arabic')

    class Meta:
        verbose_name = "Team __ المهندسون"
        verbose_name_plural = "Team __ المهندسون"

    def __str__(self):
        return self.TeTitle


class MediaTeam(Team):
    Fac = models.URLField(blank=True, verbose_name='Facebook')
    Insta = models.URLField(blank=True, verbose_name='instagram')
    Lin = models.URLField(blank=True, verbose_name='linkedin')
    beh = models.URLField(blank=True, verbose_name='behance')

    def __str__(self):
        return self.TeTitle
