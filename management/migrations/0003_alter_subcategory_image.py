# Generated by Django 4.1.1 on 2022-09-11 00:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0002_alter_category_name'),
    ]

    operations = [
        migrations.AlterField(
            model_name='subcategory',
            name='image',
            field=models.ImageField(null=True, upload_to='subcategory', verbose_name='Subcategoría'),
        ),
    ]
