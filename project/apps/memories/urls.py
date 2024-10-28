from django.urls import path 
from . import views
app_name='memories'
urlpatterns =[
                path('showmemories/',views.ShowMemories.as_view(),name="showmemories"), 
                path('registermemory/',views.add_memory,name="registermemory"), 
                path('like/',views.like,name="like"),
              ]