# Generated by Django 4.0.3 on 2022-09-14 19:05

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('management', '0003_remove_product_expirationdate_remove_sale_ndocumento_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='buy',
            name='finalPrice',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AlterField(
            model_name='detailbuy',
            name='total',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AlterField(
            model_name='detailsale',
            name='total',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AlterField(
            model_name='sale',
            name='address',
            field=models.CharField(blank=True, default='Local', max_length=254, verbose_name='Dirección'),
        ),
        migrations.AlterField(
            model_name='sale',
            name='client',
            field=models.CharField(blank=True, default='Cliente local', max_length=50, verbose_name='Cliente'),
        ),
        migrations.AlterField(
            model_name='sale',
            name='finalPrice',
            field=models.IntegerField(blank=True, default=0),
        ),
        migrations.AlterField(
            model_name='sale',
            name='nDocument',
            field=models.CharField(blank=True, default=1234567890, max_length=20, verbose_name='Número de Documento / NIT'),
        ),
        migrations.AlterField(
            model_name='sale',
            name='typeSale',
            field=models.CharField(choices=[('store', 'Local'), ('Domicilio', 'Domicilio')], default='store', max_length=9, verbose_name='Tipo de Venta'),
        ),
    ]
