from django.urls import path
from apps.workshops.views import *

app_name="workshops"
urlpatterns=[
    path('',ShowWorkshopList.as_view(),name="workshop"),
    path('workshopreport/<int:pk>',ShowWorkshopReport.as_view(),name="workshopreport"),
]    