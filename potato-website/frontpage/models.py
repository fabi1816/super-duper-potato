from django.db import models


class PageInfo(models.Model):
    name = models.CharField(max_length=20)
    description = models.CharField(max_length=200)
    relative_url = models.CharField(max_length=100)

    def __str__(self):
        return self.name
