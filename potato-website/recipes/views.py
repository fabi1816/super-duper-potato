from django.contrib.auth.decorators import login_required
from django.shortcuts import render
from recipes.models import Recipe


def list_recipes(request):
    return render(request, "recipes/list.html", context={
        "recipes_list": Recipe.objects.all()
    })


@login_required(login_url="security:login")
def detailed_recipe(request, pk):
    recipe = Recipe.objects.get(pk=pk)
    return render(request, "recipes/details.html", context={
        "recipe": recipe
    })
