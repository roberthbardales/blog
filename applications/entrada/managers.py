from django.db import models


from django.db.models import Q
from django.contrib.postgres.search import TrigramSimilarity



class EntryManager(models.Manager):
    #procedmiento para entrada

    def entrada_en_portada(self):

        return self.filter(
            public=True,
            portada=True,
        ).order_by('-created').first()

    def entradas_en_home(self):
    #devuelve las ultimas 4 entradas en home   
        return self.filter(
            public=True,
            in_home=True,
        ).order_by('-created')[:4]

    #devuelve las ultimas 6 entradas recientes   
    def entradas_recientes(self):
        return self.filter(
            public=True,
        ).order_by('-created')[:6]


    #procedimiento para buscar entradas por categoria o palabra clave
    def buscar_entrada_categoria(self,kword,categoria):
        if len(categoria)> 0:
            return self.filter(
                category__short_name=categoria,
                title__icontains=kword,
                
                public = True
            ).order_by('-created')

        else:
            return self.filter(
                Q(title__icontains=kword,) |
                Q(resume__icontains=kword,) |
                Q(content__icontains=kword,) |
                Q(title__trigram_similar=kword,) |
                Q(content__trigram_similar=kword,),
                public = True,
                
            ).order_by('-created')


