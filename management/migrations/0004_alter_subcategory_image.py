# Generated by Django 4.1.1 on 2022-09-11 01:09

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0003_alter_subcategory_image'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subcategory',
            name='image',
            field=models.ImageField(upload_to='subcategory', verbose_name='Subcategoría'),
        ),
    ]
