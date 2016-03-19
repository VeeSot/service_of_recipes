# -*- coding: utf-8 -*-
from django.shortcuts import render

from main.forms import SearchForm


def index(request):
    form = SearchForm()
    context = {'form': form}
    return render(request, 'index.html', context)
