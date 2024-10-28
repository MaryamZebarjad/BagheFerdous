from django.contrib import admin
from .models import *

@admin.register(Memory)
class MemoryAdmin (admin.ModelAdmin):
    list_display=('memory_title','register_date','is_active','user_registered',)
