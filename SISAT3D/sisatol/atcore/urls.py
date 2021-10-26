from django.contrib import admin
from django.urls import path
from .import views
from django.contrib.auth import views as auth_views


urlpatterns = [

    path('',views.inicio,name='inicio'),

    ################################  NOTA  #############################
    path('notaslistar', views.notaslistar.as_view(), name='notaslistar'),
    path('notasguardar', views.notasguardar.as_view(), name='notasguardar'),
    path('notasmodificar/<int:pk>', views.notasmodificar.as_view(), name='notasmodificar'),
    path('notasimprimir/<int:pk>', views.notas_print, name='notasimprimir'),
    path('notas_print', views.notas_print, name='notas_print'),
    path('buscar1/', views.buscanotas),


    ################################  NOTA  #############################
    path('estudianteslistar', views.estudianteslistar.as_view(), name='estudianteslistar'),
    path('estudiantesguardar', views.estudiantesguardar.as_view(), name='estudiantesguardar'),
    path('estudiantesmodificar/<int:pk>', views.estudiantesmodificar.as_view(), name='estudiantesmodificar'),
    path('estdiantesimprimir/<int:pk>', views.estudiantes_print, name='estudiantesimprimir'),
    path('estudiantes_print', views.estudiantes_print, name='estudiantes_print'),
    path('estuadiantes_pdf', views.estudiantes_print, name='estudiantes_pdf'),
    path('buscar/', views.buscaestudiantes),



]
