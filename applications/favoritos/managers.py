
from django.db import models

class FavoritesManager(models.Manager):

    def entradas_user(self,usuario):
        return self.filter(
            entry__public=True,
            user=usuario
        ).order_by('-created')

    def si_existe(self):
        return self.filter(
            entry__public=True,
            id=72
        )

"""
from applications.favoritos.models import *
Favorites.objects.si_existe()
"""
