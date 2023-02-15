
from django.shortcuts import render
from django.urls import reverse_lazy,reverse
from django.db.models import Q

from django.views.generic import(
    TemplateView,
    ListView,
    DetailView,
    CreateView,
    UpdateView,
    View,
)
#
from .forms import EntradaForm

#
from .models import Entry,Category,Tag
#
from applications.users.mixins import (
    AdministradorPermisoMixin,
    UsuarioPermisoMixin,
)
# class BuscadorGeneralTemplateView(TemplateView):
#     template_name = "entrada/lista.html"

#     def get_context_data(self, **kwargs):
#         contexto_russell = super(BuscadorGeneralTemplateView, self).get_context_data(**kwargs)
#         #entradas recientes
#         contexto_russell['russell']=Entry.objects.buscador_general()
#         return contexto_russell

# class EntryListViewBySearch(ListView):
#     template_name = "entrada/lista.html"
#     context_object_name ='entradas'
#     paginate_by = 9

#     def get_context_data(self, **kwargs):
#         context = super(EntryListViewBySearch, self).get_context_data(**kwargs)
#         context['categorias']=Category.objects.all()

#         return context

#     def get_queryset(self):
#         kword_general= self.request.GET.get('kword_general','')
#         categoria= self.request.GET.get('categoria','')
#         #consulta de busqueda
#         resultado= Entry.objects.buscador_general(kword_general,categoria)

#         return resultado



class EntryListView(ListView):
    template_name = "entrada/lista.html"
    context_object_name ='entradas'
    paginate_by = 9
    
    def get_context_data(self, **kwargs):
        context = super(EntryListView, self).get_context_data(**kwargs)
        context['categorias']=Category.objects.all().order_by('name')

        return context
    
    #buscador input
    def get_queryset(self):
        kword= self.request.GET.get('kword','')
        categoria= self.request.GET.get('categoria','')
        #consulta de busqueda
        resultado= Entry.objects.buscar_entrada_categoria(kword,categoria)
        
        return resultado
class EntryDetailView(UsuarioPermisoMixin,DetailView):

    template_name ='entrada/detail.html'
    model = Entry


class AgregarEntradaCreateView(AdministradorPermisoMixin,CreateView):
    template_name = "entrada/agregar.html"
    form_class= EntradaForm
    success_url = '/'

    def form_valid(self, form):
        
        #logica del proceso
        entrada = form.save()
        #empleado.full_name = empleado.first_name + ' ' + empleado.last_name
        entrada.save()
        return super(AgregarEntradaCreateView, self).form_valid(form)


class ActualizarEntradaUpdateView(AdministradorPermisoMixin,UpdateView):
    template_name = "entrada/actualizar.html"
    model=Entry
    form_class= EntradaForm
    reverse_lazy = 'entrada_app:entry-lista/'
        
    def form_valid(self, form):

        return super(ActualizarEntradaUpdateView, self).form_valid(form)


def buscador_general(request):
    queryset=request.GET.get('kword_general')
    print(queryset)
    resultado=Entry.objects.filter(public=True)
    if queryset:
        resultado=Entry.objects.filter(
            Q(title__icontains=resultado) |
            Q(resume__icontains=resultado)
    ).distinct
    print(resultado)
    return render(request,'entrada/lista.html',{'resultado':resultado})