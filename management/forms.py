from django import forms
from management.models import *

class CategoryForm(forms.ModelForm):
    class Meta:
        model = Category
        fields = ['name']
        
class SubcategoryForm(forms.ModelForm):
    class Meta:
        model = Subcategory
        fields = ['name','category','image']        

class BrandForm(forms.ModelForm):
    class Meta:
        model = Brand
        fields = ['name']

class ProductForm(forms.ModelForm):
    class Meta:
        model = Product
        fields = ['name','price','subcategory','brand','expirationDate','unitMeasurement','stock','image']
        widgets = {
            'expirationDate':forms.DateInput(format=(' %m/%d/%Y'),
                                    attrs={'class':'form-control',
                                            'placeholder':'Seleccione la fecha de vencimiento',
                                            'type':'date'})
        }

class ProviderForm(forms.ModelForm):
    class Meta:
        model = Provider
        fields = ['name','phone','email']
        
class BuyForm(forms.ModelForm):
    class Meta:
        model = Buy
        fields =['provider','payment']
        
class DetailBuyForm(forms.ModelForm):
    class Meta:
        model = DetailBuy
        fields=['buy','product','amount']
    
class SaleForm(forms.ModelForm):
    class Meta:
        model = Sale
        fields=['employee','typeSale','payment']
        
class DetailSaleForm(forms.ModelForm):
    class Meta:
        model = DetailSale
        fields =['sale','product','amount']

     
class BackupForm(forms.ModelForm):
    class Meta:
        model = Backup
        fields= ['name','file']