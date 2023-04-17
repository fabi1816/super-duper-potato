from django.db import models


class Recipe(models.Model):
    title = models.CharField(max_length=60)
    description = models.CharField(max_length=200, blank=True)
    creation_date = models.DateField()

    instructions = models.TextField(max_length=1500)
    favorite = models.BooleanField(default=False)

    def __str__(self) -> str:
        return self.title


class Ingredient(models.Model):
    name = models.CharField(max_length=120)
    quantity = models.CharField(max_length=50, default=None)
    description = models.CharField(max_length=200, blank=True)

    parent_recipe = models.ForeignKey(Recipe, on_delete=models.CASCADE)

    def __str__(self) -> str:
        return f"{self.name} - {self.quantity}"
