# Generated by Django 3.0.3 on 2023-01-06 00:29

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('entrada', '0002_entry_user'),
    ]

    operations = [
        migrations.AlterField(
            model_name='category',
            name='short_name',
            field=models.CharField(max_length=30, unique=True, verbose_name='Nombre corto'),
        ),
    ]
