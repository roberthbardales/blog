from django.contrib import admin
#
from .models import Favorites

# admin.site.register(Favorites)

class FavoritesAdmin(admin.ModelAdmin):
    list_display = (
        'id',
        'user',
        'entry',
    )

    search_fields = ('id',)

    list_filter = ('user',)
    # list_filter = ('user', 'id')
    

admin.site.register(Favorites, FavoritesAdmin)