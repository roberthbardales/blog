

from django  import forms

from .models import Entry
from applications.users.models import User

class EntradaForm(forms.ModelForm):

    class Meta:
        model = Entry
        #fields =(__all_)
        fields =(
        'user',
        'category',
        'tag',
        'title',
        'resume',
        'content',
        'public',
        'image',
        'portada',
        'in_home',
        )
        widgets={

            'user':forms.Select(
                attrs={
                'class':'form-control form-control-sm',

                }
            ),
            'category':forms.Select(
                attrs={
                'class':'form-control form-control-sm',
                }
            ),
            'public':forms.CheckboxInput(
                attrs={
                    'checked':'',
                }
            ),
            'in_home':forms.CheckboxInput(
                attrs={
                    'checked':'',
                }
            ),
            'title':forms.TextInput(
                attrs={
                    'class':'form-control form-control-sm',
                }
            ),
            'tag':forms.SelectMultiple(
                attrs={

                    'class':'form-control form-control-sm w-85',
                }
            ),
            'resume':forms.Textarea(
                attrs={
                    'class':'form-control form-control-md',
                    'rows':'2',
                }
            ),

        }


