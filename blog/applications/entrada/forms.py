

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

                }
            ),
            'category':forms.Select(
                attrs={

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
        }
