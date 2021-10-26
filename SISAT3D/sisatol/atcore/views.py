import io

import q as q
from django.contrib.auth.mixins import LoginRequiredMixin
from django.db.models import Q
from django.http import HttpResponse
from django.shortcuts import render
from reportlab.lib import colors
from reportlab.lib.pagesizes import letter, A4
from reportlab.lib.styles import getSampleStyleSheet
from reportlab.pdfgen import canvas
from reportlab.platypus import SimpleDocTemplate, Table, TableStyle, Paragraph
from .models import *
from django.views.generic.list import ListView
from django.views.generic import CreateView, UpdateView
from django.urls import reverse_lazy
# Create your views here.


def inicio(request):
    return render(request, 'home.html')

class notaslistar(ListView):
    login_url = 'login'
    model = notas
    template_name ='nota_listar.html'


class notasguardar(CreateView):
    model = notas
    fields = ['id_estudiantes','id_materias','notas']
    template_name = 'nota_guardar.html'
    success_url = reverse_lazy('notaslistar')


class notasmodificar(UpdateView):
    model = notas
    fields =['id_estudiantes','id_materias','notas']
    template_name = 'nota_modificar.html'
    success_url = reverse_lazy('notaslistar')


def notas_print(self, pk=None):
    response = HttpResponse(content_type='application/pdf')
    buff = io.BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=letter,
                            rigthMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=19,
                            )
    lista = []
    styles = getSampleStyleSheet()
    header = Paragraph("Listado de Notas", styles['Heading1'])
    lista.append(header)
    headings = ('Id', 'Estudiante', 'Materia', 'Nota','Estado')


    if not pk:
        todoslista = [(p.id,p.id_estudiantes,p.id_materias,p.notas,p.notasanulado)
                      for p in notas.objects.all().order_by('pk')]
    else:
        todoslista = [(p.id,p.id_estudiantes,p.id_materias,p.notas,p.notasanulado)
                      for p in notas.objects.filter(id=pk)]
    t = Table([headings] + todoslista)
    t.setStyle(TableStyle(
        [
            ('GRID', (0, 0), (8, -1), 1, colors.dodgerblue),
            ('LINEBELOW', (0, 0), (-1, 0), 2, colors.darkblue),
            ('BACKGROUND', (0, 0), (-1, 0), colors.dodgerblue)
        ]
    ))

    lista.append(t)
    doc.build(lista)
    response.write(buff.getvalue())
    buff.close()
    return response


def buscanotas(request):
    if request.GET["pwd"]:
        #mensaje ="La categoria a buscar es  :%r" %request.GET["pwd"]
        pwd = request.GET["pwd"]
        doc = notas.objects.filter(notas=pwd)
        return render(request, "notas_listar.html", {'object_list': doc})
    else:
       # mensaje = "Por favor ingrese la categoria a buscar :%r" % request.GET["pwd"]
        pwd = request.GET["pwd"]
        doc = notas.objects()
        return render(request, "notas_listar.html", {'object_list': doc})
        #return HttpResponse(mensaje)

####### estudiantes #######

class estudianteslistar(ListView):
    model = estudiantes
    template_name ='estudiantes_listar.html'

class estudiantesguardar(CreateView):
    model = estudiantes
    fields = ['estudiantes_nomnbre','estudiantes_apellido']
    template_name = 'estudiantes_guardar.html'
    success_url = reverse_lazy('estudianteslistar')

class estudiantesmodificar(UpdateView):
    model = estudiantes
    fields =['estudiantes_nomnbre','estudiantes_apellido']
    template_name = 'estudiantes_modificar.html'
    success_url = reverse_lazy('estudianteslistar')

def buscaestudiantes(request):
    if request.GET["pwd"]:
        # mensaje ="La categoria a buscar es  :%r" %request.GET["pwd"]
        pwd = request.GET["pwd"]
        doc = estudiantes.objects.filter(estudiantes_apellido=pwd)
        return render(request, "estudiantes_listar.html", {'object_list': doc})
    else:
        # mensaje = "Por favor ingrese la categoria a buscar :%r" % request.GET["pwd"]
        pwd = request.GET["pwd"]
        doc = estudiantes.objects.all()
        return render(request, "estudiantes_listar.html")
        # return HttpResponse(mensaje)


def estudiantes_print(self, pk=None):
    response = HttpResponse(content_type='application/pdf')
    buff = io.BytesIO()
    doc = SimpleDocTemplate(buff,
                            pagesize=A4,
                            rightMargin=40,
                            leftMargin=40,
                            topMargin=60,
                            bottomMargin=18,
                            )
    lista = []
    styles = getSampleStyleSheet()
    header = Paragraph("Listado de Estudiantes", styles['Heading1'])
    lista.append(header)
    headings = ('Id', 'Apellidos', 'Nombres', 'Estado')
    if not pk:
        todoslista = [(p.id, p.estudiantes_apellido, p.estudiantes_nomnbre, p.estudiantes_anulado)
                      for p in estudiantes.objects.all().order_by('pk')]
    else:
        todoslista = [(p.id, p.estudiantes_apellido, p.estudiantes_nomnbre, p.estudiantes_anulado)
                      for p in estudiantes.objects.filter(id=pk)]
    t = Table([headings] + todoslista)
    t.setStyle(TableStyle(
        [
            ('GRID', (0, 0), (10, -1), 1, colors.dodgerblue),
            ('ALIGN', (0, 1), (-1, -1), 'CENTER'),
            ('LINEBELOW', (0, 0), (-1, 0), 2, colors.darkblue),
            ('BACKGROUND', (0, 0), (-1, 0), colors.dodgerblue)
        ]
    ))

    lista.append(t)
    doc.build(lista)
    response.write(buff.getvalue())
    buff.close()
    return response












