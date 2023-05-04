from django.views.generic import ListView
from .models import PageInfo


class FrontPageView(ListView):
    model = PageInfo
    template_name = "frontpage/index.html"
    context_object_name = "apps_list"
