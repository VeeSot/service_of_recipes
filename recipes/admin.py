from django import forms
from django.contrib import admin

from recipes.models import Recipe, Ingredient, VariantOfIngredient


class RecipeAdmin(admin.ModelAdmin):
    pass


class IngredientForm(forms.ModelForm):
    def __init__(self, *args, **kwargs):
        """Переопределяем стандартную форму в админке
        чтоб она показывала варианты ингридиента только по тому продукту
        на который мы смотрим,а не стопку всех вариантов по всем ингридиентам"""
        super(IngredientForm, self).__init__(*args, **kwargs)
        wtf = VariantOfIngredient.objects.filter(ingredient=self.instance.id)
        w = self.fields['variants'].widget
        w.choices = []
        for choice in wtf:
            w.choices.append((choice.id, choice.name))



class IngredientAdmin(admin.ModelAdmin):
    form = IngredientForm


class VariantOfIngredientAdmin(admin.ModelAdmin):
    pass


admin.site.register(Recipe, RecipeAdmin)
admin.site.register(Ingredient, IngredientAdmin)
admin.site.register(VariantOfIngredient, VariantOfIngredientAdmin)
