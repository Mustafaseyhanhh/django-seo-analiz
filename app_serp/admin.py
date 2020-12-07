from django.contrib import admin
from . import models

# Register your models here.

admin.site.register(models.Site)
admin.site.register(models.Keyword)
admin.site.register(models.Rank)
admin.site.register(models.SearchEngine)
admin.site.register(models.Platform)
admin.site.register(models.UserAgent)
admin.site.register(models.Language)
admin.site.register(models.LocationCity)
admin.site.register(models.LocationCountry)
admin.site.register(models.LocationPrivate)