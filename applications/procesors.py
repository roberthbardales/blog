from applications.home.models import Home

# procesor para recueprar telefono y correo del registro home
#esta funcion o variables lo pueden ver todos los templates
#se tiene que configurar base.py

def home_contact(request):
    
    home = Home.objects.latest('created')

    return {
        'phone': home.phone,
        'correo': home.contact_email,
    }