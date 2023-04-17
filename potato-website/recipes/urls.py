from django.urls import path
from . import views

app_name = "recipes"

urlpatterns = [
    path("", views.list_recipes, name="index"),  # /recipes
    path("<int:pk>", views.detailed_recipe, name="details"),  # /recipes/5
]
