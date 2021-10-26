from django import forms
from .models import cabecerafactura, detallefactura, cliente


class clienteForm(forms.ModelForm):
    class Meta:
        model = cliente
        fields = ["Apellidos y Nombres", "Cedula/ruc", "Dirección", "Telefono"]


class cabecerafacturaForm(forms.ModelForm):
    class Meta:
        model = cabecerafactura
        fields = ['cliente', 'fecha_factura']
        widgets = {
            'fecha_factura': forms.DateInput(format=('%Y-%m-%d'),
                                               attrs={'placeholder': 'Select a date',
                                                      'type': 'date', 'size': 30}),
        }

class detallefacturaForm(forms.ModelForm):
    class Meta:
        model = detallefactura
        fields = ["Producto", "Categoria", "Marca","Cantidad", "Precio", "subtotal"]

