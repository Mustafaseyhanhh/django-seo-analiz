# Generated by Django 3.0.7 on 2020-06-29 15:00

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('app_serp', '0001_initial'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Keywords',
            new_name='Keyword',
        ),
        migrations.RenameModel(
            old_name='SearchLanguage',
            new_name='Language',
        ),
        migrations.RenameModel(
            old_name='SearchLocationCity',
            new_name='LocationCity',
        ),
        migrations.RenameModel(
            old_name='SearchLocationCauntry',
            new_name='LocationCountry',
        ),
        migrations.RenameModel(
            old_name='SearchRank',
            new_name='Rank',
        ),
        migrations.RenameModel(
            old_name='Sites',
            new_name='Site',
        ),
    ]