from django.apps import apps
from django.views.generic import ListView


class FrontPageView(ListView):
    template_name = "frontpage/index.html"
    context_object_name = "apps_list"

    def get_queryset(self):
        # For the moment, let's return a hardcoded list of installed applications
        return [
            {
                "name": "FrontPage",
                "url": "/",
                "description": "This page, lists all available applications",
            },
            {
                "name": "Admin",
                "url": "/admin/",
                "description": "Manages access and CRUD operations",
            },
            {
                "name": "Recipes",
                "url": "/recipes/",
                "description": "Displays delicious recipes to make at home",
            },
            {
                "name": "security",
                "url": "#",
                "description": "Manages authentication of users",
            },
        ]