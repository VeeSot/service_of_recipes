# -*- coding: utf-8 -*-
import json

from django.http import HttpResponse
from django.shortcuts import render

from recipes.models import Recipe, Ingredient


def index(request):
    return render(request, 'index.html')


def search(request):
    """Ищем рецепты исходя из того что пришло в параметрах"""
    response = []
    all_recipes = set()  # По разным словам могут находится повторно находится рецепты
    if request.method == 'POST' and request.body and request.is_ajax():
        query = request.POST.get('query', None)
        if query:  # Похоже что то прислали
            # Найдем все рецепты которые подходят по названию или похожи на него
            recipes = Recipe.objects.filter(name__icontains=query)
            for recipe in recipes:
                all_recipes.add(recipe)
    # После чего разберем каждый рецепт до составляющих его ингридиентов
    for recipe in all_recipes:
        about_recipe = {'name': recipe.name}
        ingredients = Ingredient.objects.filter(recipes=recipe)
        list_ingredients = []
        for ingredient in ingredients:
            list_ingredients.append(ingredient.name)
        about_recipe.update({'ingredients': list_ingredients})  # Добавим все ингридиенты рецепта
        response.append(about_recipe)
    return HttpResponse(json.dumps(response), content_type="application/json")
