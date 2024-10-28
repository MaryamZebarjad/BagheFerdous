from django.contrib import admin
from .models import *

@admin.register(Place)
class PlaceAdmin(admin.ModelAdmin):
    list_display=('place_name','place_image_name','visiting_day','visiting_hour','register_date')
    
@admin.register(VisitorType)
class VisitorTypeAdmin(admin.ModelAdmin):
    list_display=('type_name',)

@admin.register(TicketPrice)
class TicketPriceAdmin(admin.ModelAdmin):
    list_display=('place','visitor_type','price')

@admin.register(Message)
class MessageAdmin(admin.ModelAdmin):
    list_display=('full_name','subject','email','is_seen','register_date')