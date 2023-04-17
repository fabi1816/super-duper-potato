from django.shortcuts import render
from recipes.models import Recipe


def list_recipes(request):
    return render(request, "recipes/list.html", context={
        "recipes_list": Recipe.object.all()
    })


def detailed_recipe(request, pk):
    recipe = Recipe.objects.get(pk=pk)
    return render(request, "recipes/details.html", context={
        "recipe": recipe
    })
