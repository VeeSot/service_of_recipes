from django.db import models


class Recipe(models.Model):
    name = models.CharField(verbose_name='Название', max_length=128)

    def __str__(self):
        return self.name

    class Meta:
        app_label = 'recipes'
        db_table = 'recipes'
        verbose_name = 'Рецепт'
        verbose_name_plural = "Рецепты"


class Ingredient(models.Model):
    name = models.CharField(verbose_name='Название', max_length=128)
    recipes = models.ManyToManyField(to=Recipe, verbose_name='Рецепты')
    variants = models.ManyToManyField('VariantOfIngredient', related_name='variants',
                                      verbose_name='Варианты ингридиента', blank=True)

    def __str__(self):
        return self.name

    class Meta:
        app_label = 'recipes'
        db_table = 'ingredients'
        verbose_name = 'Ингредиент'
        verbose_name_plural = "Ингредиенты"


class VariantOfIngredient(models.Model):
    name = models.CharField(verbose_name='Название', max_length=128)
    ingredient = models.ForeignKey('Ingredient', related_name='ingredients', verbose_name="Ингредиент")

    def __str__(self):
        return self.name

    class Meta:
        app_label = 'recipes'
        db_table = 'variants_of_ingredient'
        verbose_name = 'Вариант ингридиента'
        verbose_name_plural = "Варианты ингридиента"
