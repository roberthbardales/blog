
from django.shortcuts import render
from django.urls import reverse_lazy,reverse



from django.views.generic import(
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

class EntryListView(ListView):
    template_name = "entrada/lista.html"
    context_object_name ='entradas'
    paginate_by = 9
    
    def get_context_data(self, **kwargs):
        context = super(EntryListView, self).get_context_data(**kwargs)
        context['categorias']=Category.objects.all()

        return context
    
    #buscador input
    def get_queryset(self):
        kword= self.request.GET.get('kword','')
        categoria= self.request.GET.get('categoria','')
        #consulta de busqueda
        resultado= Entry.objects.buscar_entrada_categoria(kword,categoria)
        
        return resultado


class EntryDetailView(DetailView):

    template_name ='entrada/detail.html'
    model = Entry


class AgregarEntradaCreateView(CreateView):
    template_name = "entrada/agregar.html"
    form_class= EntradaForm
    success_url = '/'

    def form_valid(self, form):
        
        #logica del proceso
        entrada = form.save()
        #empleado.full_name = empleado.first_name + ' ' + empleado.last_name
        entrada.save()
        return super(AgregarEntradaCreateView, self).form_valid(form)


class ActualizarEntradaUpdateView(UpdateView):
    template_name = "entrada/actualizar.html"
    model=Entry
    form_class= EntradaForm
    reverse_lazy = 'entrada_app:entry-lista/'
        
    def form_valid(self, form):

        return super(ActualizarEntradaUpdateView, self).form_valid(form)

