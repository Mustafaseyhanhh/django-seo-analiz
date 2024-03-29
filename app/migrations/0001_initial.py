# Generated by Django 3.0.7 on 2020-06-20 19:43

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Sites',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('uid', models.IntegerField(verbose_name='Üye ID')),
                ('site_url', models.CharField(max_length=100, verbose_name='Site Adresi')),
                ('add_date', models.DateTimeField(auto_now=True, verbose_name='Ekleme Tarihi')),
            ],
        ),
        migrations.CreateModel(
            name='Keywords',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('keyword', models.CharField(max_length=100, verbose_name='Kelime')),
                ('add_date', models.DateTimeField(auto_now=True, verbose_name='Ekleme Tarihi')),
                ('site', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.Sites')),
            ],
        ),
    ]
