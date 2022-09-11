import os
from django.db import models
from django.utils.translation import gettext_lazy as _
from django.core.validators import MinValueValidator
from django.core.exceptions import ValidationError

from personal.models import User

class Category(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"Nombre", blank=False, db_column="Nombre" , unique=True )
    status = models.BooleanField(default=True, db_column="Estado")
    def __str__(self) -> str:
        return ' %s' %(self.name)
    def clean(self):
        self.name = self.name.title()
    class Meta:
        verbose_name = "Categoria"
        verbose_name_plural = "Categories"
        
class Subcategory(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"Nombre", blank=False , unique=True )
    category = models.ForeignKey(Category, on_delete=models.SET_NULL, null=True, verbose_name=u"Categoría")
    image = models.ImageField(upload_to='subcategory', null=True, verbose_name=u"Subcategoría")
    status = models.BooleanField(default=True)
    def __str__(self) -> str:
        return ' %s' %(self.name)
    def clean(self):
        self.name = self.name.title()
    class Meta:
        verbose_name = "Subcategoria"
        verbose_name_plural = "Subcategories"

class Brand(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"Brand", blank=False , unique=True )
    status = models.BooleanField(default=True)
    def __str__(self) -> str:
        return (self.name)
    def clean(self):
        self.name = self.name.title()
    class Meta:
        verbose_name = "Marca"
        verbose_name_plural = "Brands"

class Product(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"Nombre", blank=False , unique=True )
    price = models.FloatField(blank=False, verbose_name=u"Precio")
    # description = models.TextField(max_length=150, blank=True, verbose_name=u"Descripción")
    subcategory = models.ForeignKey(Subcategory, on_delete=models.SET_NULL, null=True, verbose_name=u"Subcategoría")
    brand = models.ForeignKey(Brand, on_delete=models.SET_NULL, null=True, verbose_name=u"Marca")
    expirationDate = models.DateField(verbose_name="Fecha de Vencimiento", help_text=u"DD/MM/AAAA")
    class UMeasurement(models.TextChoices):
        unit = 'unit', _('Unidad')
        pound = 'pound', _('Lb')
        kilogram ='kilogram', _('Kg')
    unitMeasurement = models.CharField(max_length=30, choices=UMeasurement.choices, default=UMeasurement.unit, verbose_name="Unidad de medida")
    stock = models.PositiveIntegerField(validators=[MinValueValidator(1)], blank=False, null=True)
    image = models.ImageField(upload_to='product', null=True, verbose_name=u"Producto", default='product/Logo.png')
    status = models.BooleanField(default=True)
    def __str__(self) -> str:
        return ' %s' %(self.name)
    def clean(self):
        self.name = self.name.title()
    class Meta:
        verbose_name = "Producto"
        verbose_name_plural = "Productos"
    
class Provider(models.Model):
    name = models.CharField(max_length=50, verbose_name=u"Nombre", blank=False , unique=True )
    phone = models.CharField(max_length=10, verbose_name=u"Teléfono", blank=True )
    email = models.EmailField(max_length=254, verbose_name=u"Correo Electrónico")
    status = models.BooleanField(default=True)
    def __str__(self) -> str:
        return (self.name)
    def clean(self):
        self.name = self.name.title()
    class Meta:
        verbose_name = "Proveedor"
        verbose_name_plural = "Proveedores"
        
class Payment(models.TextChoices):
        dtf = 'Dtf', _('Datafono')
        eft = 'Etv', _('Efectivo')
        tsc = 'Tsc', _('Transaccion')
        
class Buy(models.Model):
    date = models.DateTimeField(auto_now_add=True, verbose_name="Fecha de Compra")
    provider = models.ForeignKey(Provider, on_delete=models.SET_NULL, null=True, verbose_name=u"Proveedor")
    payment = models.CharField(max_length=11, choices=Payment.choices, default=Payment.eft, verbose_name=u"Método de Pago", blank=False)
    status = models.BooleanField(default=True)
    def __str__(self) -> str:
        return ' %s' %(self.date)
    class Meta:
        verbose_name="Compra"
        verbose_name_plural = "Compras"
        
class DetailBuy(models.Model):
    buy = models.ForeignKey(Buy, on_delete=models.SET_NULL, null=True, verbose_name=u"Id Compra")
    product = models.ForeignKey(Product, on_delete=models.SET_NULL,null=True,verbose_name=u"Producto")
    amount = models.PositiveIntegerField(validators=[MinValueValidator(1)],default=1)
    status = models.BooleanField(default=True)
    class Meta:
        verbose_name="Detalle de compra"
        verbose_name_plural = "Detalle de compras"
        
class Sale(models.Model):
    date = models.DateField(auto_now=True, verbose_name="Fecha de Venta")
    employee = models.ForeignKey(User, on_delete=models.SET_NULL, null=True, verbose_name=u"Empleado")
    class TypeSale(models.TextChoices):
        store = 'store', _('Local')
        address = 'Domicilio', _('Domiclio')
    typeSale = models.CharField(max_length=9, choices=TypeSale.choices, default=TypeSale.store, verbose_name=u"Tipo de Venta")
    finalPrice = models.IntegerField(default=0)
    payment = models.CharField(max_length=11, choices=Payment.choices, default=Payment.eft, verbose_name=u"Método de Pago", blank=False)
    status = models.BooleanField(default=True)
    def __str__(self) -> str:
        return ' %s' %(self.date)
    class Meta:
        verbose_name = "Venta"
        verbose_name_plural = "Ventas"
        
class DetailSale(models.Model):
    sale = models.ForeignKey(Sale, on_delete=models.SET_NULL, null=True, verbose_name=u"Id Venta")
    date = models.DateField(auto_now=True, verbose_name="Fecha de Venta")
    product = models.ForeignKey(Product, on_delete=models.SET_NULL, null=True, verbose_name=u"Productos")
    amount = models.PositiveIntegerField(validators=[MinValueValidator(1)], default=1)
    finalPrice = models.IntegerField(default=0)
    status = models.BooleanField(default=True)
    class Meta:
        verbose_name="Detalle de venta"
        verbose_name_plural = "Detalle de ventas"
        
def validateExtent(value):
    ext = os.path.splitext(value.name)[1]
    extension = ['.sql']
    if not ext.lower() in extension:
        raise ValidationError('Archivo no válido')

class Backup(models.Model):
    name = models.CharField(max_length = 200, default="Copia de Seguridad", blank=True)
    file = models.FileField(upload_to = "backup",validators=[validateExtent])
    date = models.DateTimeField(auto_now = True)
    class Meta:
        verbose_name="Copia de Seguridad"
        verbose_name_plural = "Copias de Seguridad"

