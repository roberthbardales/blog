#
from django.urls import path
from . import views

app_name = "entrada_app"

urlpatterns = [
    path(
        'entradas/', 
        views.EntryListView.as_view(),
        name='entry-lista',
    ),
    path(
        'entrada/<slug>/', 
        views.EntryDetailView.as_view(),
        name='entry-detail',
    ),
    path(
        'agregar/', 
        views.AgregarEntradaCreateView.as_view(),
        name='add-entrada',
    ),

    path(
        'actualizar/<pk>/', 
        views.ActualizarEntradaUpdateView.as_view(),
        name='update-entrada',
    ),

]