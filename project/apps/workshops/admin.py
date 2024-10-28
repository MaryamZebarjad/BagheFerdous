from django.contrib import admin
from .models import *

@admin.register(WorkshopStatus)
class WorkshopStatusAdmin(admin.ModelAdmin):
    list_display=('status_code','status_title')
    
@admin.register(Workshop)
class WorkshopAdmin(admin.ModelAdmin):
    list_display=('title','place','teacher','view_number','register_date','is_active','status_id')

@admin.register(WorkshopGallery)
class WorkshopGalleryAdmin(admin.ModelAdmin):
    list_display=('workshop','image')


