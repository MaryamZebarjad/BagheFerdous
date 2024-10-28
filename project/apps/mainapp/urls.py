from django.urls import path
import apps.mainapp.views as views

app_name="main"
urlpatterns=[
    path('',views.index,name='index'),
]