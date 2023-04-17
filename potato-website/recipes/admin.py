from django.contrib import admin
from recipes.models import Recipe, Ingredient


class IngredientInLine(admin.TabularInline):
    model = Ingredient
    extra = 2


class RecipeAdmin(admin.ModelAdmin):
    inlines = [IngredientInLine]


admin.site.register(Recipe, RecipeAdmin)
