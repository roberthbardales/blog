
from logging import PlaceHolder
from django import forms

# models 
from .models import Contact, Suscribers

class SuscribersForm(forms.ModelForm):
    class Meta:
        model= Suscribers
        fields=(
            'email',

        )
        widgets={
            'email':forms.EmailInput(
                attrs={
                    'placeHolder':'Correo Electronico ...',
                    'class':'form-control mr-sm-2'
                    
                }
            )
        }

class ContactForm(forms.ModelForm):
    class Meta:
        model= Contact
        fields=(
            '__all__'
        )

