# Generated by Django 3.0.7 on 2020-06-29 06:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0002_auto_20200621_2014'),
    ]

    operations = [
        migrations.AddField(
            model_name='sites',
            name='rank_time',
            field=models.IntegerField(default=1, verbose_name='Rank Time'),
            preserve_default=False,
        ),
    ]
