# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Ingredient',
            fields=[
                ('id', models.AutoField(verbose_name='ID', auto_created=True, serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=128, verbose_name='Название')),
            ],
            options={
                'verbose_name_plural': 'Ингридиенты',
                'db_table': 'ingredients',
                'verbose_name': 'Ингридиент',
            },
        ),
        migrations.CreateModel(
            name='Recipe',
            fields=[
                ('id', models.AutoField(verbose_name='ID', auto_created=True, serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=128, verbose_name='Название')),
            ],
            options={
                'verbose_name_plural': 'Рецепты',
                'db_table': 'recipes',
                'verbose_name': 'Рецепт',
            },
        ),
        migrations.CreateModel(
            name='VariantOfIngredient',
            fields=[
                ('id', models.AutoField(verbose_name='ID', auto_created=True, serialize=False, primary_key=True)),
                ('name', models.CharField(max_length=128, verbose_name='Название')),
                ('ingredient', models.ForeignKey(related_name='ingredients', to='recipes.Ingredient', verbose_name='Ингридиент')),
            ],
            options={
                'verbose_name_plural': 'Варианты ингридиента',
                'db_table': 'variants_of_ingredient',
                'verbose_name': 'Вариант ингридиента',
            },
        ),
        migrations.AddField(
            model_name='ingredient',
            name='recipes',
            field=models.ManyToManyField(to='recipes.Recipe', verbose_name='Рецепты'),
        ),
        migrations.AddField(
            model_name='ingredient',
            name='variants',
            field=models.ManyToManyField(to='recipes.VariantOfIngredient', related_name='variants', verbose_name='Варианты ингридиента'),
        ),
    ]
