from django import forms
from personal.models import *

class UserForm(forms.ModelForm):
    class Meta:
        model = User
        fields = ['username','password','name','lastName','tDocument','nDocument','phone','dateBirth','email','user_admin']   
        widgets={
            'username':forms.TextInput(attrs={'class':'form-comtrol'}),
            'password':forms.PasswordInput(attrs={'class':'form-control'}),
            'name':forms.TextInput(attrs={'class':'form-comtrol'}),
            'lastName':forms.TextInput(attrs={'class':'form-comtrol'}),
            'tDocument':forms.Select(attrs={'class':'form-comtrol'}),
            'nDocument':forms.NumberInput(attrs={'class':'form-comtrol'}),
            'phone':forms.NumberInput(attrs={'class':'form-comtrol'}),
            'dateBirth':forms.DateInput(format=(' %m/%d/%Y'),
                                    attrs={'class':'form-control',
                                            'placeholder':'Seleccione la fecha de nacimiento',
                                            'type':'date'}),
            'email':forms.EmailInput(attrs={'class':'form-comtrol'})
        }