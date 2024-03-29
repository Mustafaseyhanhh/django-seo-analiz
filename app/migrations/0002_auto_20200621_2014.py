# Generated by Django 3.0.7 on 2020-06-21 17:14

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='keywords',
            name='add_date',
            field=models.DateTimeField(auto_now=True, verbose_name='Add Date'),
        ),
        migrations.AlterField(
            model_name='keywords',
            name='keyword',
            field=models.CharField(max_length=100, verbose_name='Keyword'),
        ),
        migrations.AlterField(
            model_name='sites',
            name='add_date',
            field=models.DateTimeField(auto_now=True, verbose_name='Add Date'),
        ),
        migrations.AlterField(
            model_name='sites',
            name='site_url',
            field=models.CharField(max_length=100, verbose_name='Site URL'),
        ),
        migrations.AlterField(
            model_name='sites',
            name='uid',
            field=models.IntegerField(verbose_name='User ID'),
        ),
        migrations.CreateModel(
            name='Siralama',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('rank', models.IntegerField(verbose_name='Rank')),
                ('add_date', models.DateTimeField(auto_now=True, verbose_name='Add Date')),
                ('keyword', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.Keywords')),
                ('site', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='app.Sites')),
            ],
        ),
    ]
