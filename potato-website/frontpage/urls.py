from django.urls import path
from .views import FrontPageView

app_name = "frontpage"

urlpatterns = [
    path("", FrontPageView.as_view(), name="index"),  # /
]
