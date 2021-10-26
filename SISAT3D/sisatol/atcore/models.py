from django.db import models

# Create your models here.

class materias(models.Model):
    materias_nombre = models.CharField(max_length=150)
    Estado = (
        ('1','Activo'),
        ('0', 'No Activo'),
    )
    materias_anulada= models.CharField(max_length=1,choices=Estado,help_text="Seleccione el Estado",default='1')

    def __str__(self):
        return '{}'.format(self. materias_nombre)

class estudiantes(models.Model):
    estudiantes_nomnbre = models.CharField(max_length=150)
    estudiantes_apellido = models.CharField(max_length=150)
    Estado = (
        ('1','Activo'),
        ('0', 'No Activo'),
    )
    estudiantes_anulado= models.CharField(max_length=1,choices=Estado,help_text="Seleccione el Estado",default='1')

    def __str__(self):
        return '{}'.format(self. estudiantes_apellido)


class notas(models.Model):
    id_estudiantes = models.ForeignKey(estudiantes, on_delete=models.CASCADE)
    id_materias = models.ForeignKey(materias, on_delete=models.CASCADE)
    notas = models.FloatField()
    Estado = (
        ('1', 'Activo'),
        ('0', 'No Activo'),
    )
    notasanulado = models.CharField(max_length=1, choices=Estado, help_text="Seleccione el Estado", default='1')

    def __str__(self):
        return '{}'.format(self.notas)
