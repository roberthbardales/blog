# Generated by Django 3.2.16 on 2023-01-12 00:02

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('favoritos', '0002_auto_20221209_1639'),
    ]

    operations = [
        migrations.AlterField(
            model_name='favorites',
            name='id',
            field=models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID'),
        ),
    ]
