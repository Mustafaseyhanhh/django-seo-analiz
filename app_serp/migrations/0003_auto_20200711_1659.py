# Generated by Django 3.0.7 on 2020-07-11 13:59

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app_serp', '0002_auto_20200629_1800'),
    ]

    operations = [
        migrations.CreateModel(
            name='PrivateLocation',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=200, verbose_name='Name')),
                ('x', models.FloatField(verbose_name='X')),
                ('y', models.FloatField(verbose_name='Y')),
            ],
        ),
        migrations.AddField(
            model_name='keyword',
            name='language',
            field=models.CharField(default=1, max_length=100, verbose_name='Language'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='keyword',
            name='location_name',
            field=models.CharField(default=2, max_length=200, verbose_name='Location Name'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='keyword',
            name='location_x',
            field=models.FloatField(default=1, verbose_name='Locale X'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='keyword',
            name='location_y',
            field=models.FloatField(default=1, verbose_name='Locale Y'),
            preserve_default=False,
        ),
    ]
