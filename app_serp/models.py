from django.db import models

# Create your models here.

class Site(models.Model):
    uid = models.IntegerField("User ID")
    site_url = models.CharField("Site URL", max_length=100)
    add_date = models.DateTimeField("Add Date", auto_now=True)
    rank_time=models.IntegerField("Rank Time")

    def __str__(self):
        return self.site_url

class SearchEngine(models.Model):
    name = models.CharField("Name", max_length=200)

    def __str__(self):
        return self.name

class Platform(models.Model):
    name = models.CharField("Name", max_length=200)

    def __str__(self):
        return self.name

class UserAgent(models.Model):
    platform = models.ForeignKey(Platform, on_delete=models.CASCADE)
    user_agent = models.CharField("User Agent", max_length=500)

    def __str__(self):
        return self.user_agent

class Keyword(models.Model):
    site = models.ForeignKey(Site, on_delete=models.CASCADE)
    keyword = models.CharField("Keyword", max_length=100)
    language = models.CharField("Language", max_length=100)
    platform = models.ForeignKey(Platform, on_delete=models.CASCADE)
    location_name = models.CharField("Location Name", max_length=200)
    location_x = models.FloatField("Locale X")
    location_y = models.FloatField("Locale Y")
    add_date = models.DateTimeField("Add Date",auto_now=True)

    def __str__(self):
        return self.site.site_url
class LocationCountry(models.Model):
    name = models.CharField("Name", max_length=200)
    x = models.FloatField("Locale X")
    y = models.FloatField("Locale Y")
    
    def __str__(self):
        return self.name

class LocationCity(models.Model):
    name = models.CharField("Name", max_length=200)
    x = models.FloatField("X")
    y = models.FloatField("Y")

    def __str__(self):
        return self.name

class LocationPrivate(models.Model):
    name = models.CharField("Name", max_length=200)
    x = models.FloatField("X")
    y = models.FloatField("Y")

    def __str__(self):
        return self.name

class Language(models.Model):
    name = models.CharField("Name", max_length=200)
    tag = models.CharField("Name", max_length=200)

    def __str__(self):
        return self.name

class Rank(models.Model):
    site = models.ForeignKey(Site, on_delete=models.CASCADE)
    keyword = models.ForeignKey(Keyword, on_delete=models.CASCADE)
    rank = models.IntegerField("Rank")
    location = models.ForeignKey(LocationCity, on_delete=models.CASCADE)
    add_date = models.DateTimeField("Add Date",auto_now=True)

    def __str__(self):
        return self.site