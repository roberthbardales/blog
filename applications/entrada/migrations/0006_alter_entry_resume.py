# Generated by Django 3.2.16 on 2023-01-12 00:03

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('entrada', '0005_auto_20230111_1902'),
    ]

    operations = [
        migrations.AlterField(
            model_name='entry',
            name='resume',
            field=models.TextField(verbose_name='Resumen'),
        ),
    ]
