from django import forms


class SearchForm(forms.Form):
    name = forms.CharField(label='Название', max_length=100)

