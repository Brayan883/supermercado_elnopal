from django import forms
from personal.models import *

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = '__all__'    
        widgets={
            'dateBirth':forms.DateInput(format=(' %m/%d/%Y'),
                                    attrs={'class':'form-control',
                                            'placeholder':'Seleccione la fecha de nacimiento',
                                            'type':'date'})
        }