# Generated by Django 4.0.3 on 2022-09-13 20:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='product',
            name='image',
            field=models.ImageField(default='product/Logo.png', upload_to='product', verbose_name='Imagen'),
        ),
    ]
