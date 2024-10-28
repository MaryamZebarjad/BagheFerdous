from django.shortcuts import render,redirect
from .models import Place,TicketPrice,Message
from django.http import Http404
from django.core.files.storage import FileSystemStorage
from  django.http import HttpResponse,HttpResponseNotFound
from .forms import MessageForm
from django.contrib import messages

def show_garden_history(request):
    return render(request,'places/history.html')

def show_garden_parts(request):
    places=Place.objects.all
    context={
        'places':places
    }
    return render(request,"places/parts.html",context)
    
def show_part_detail(request,pk):
    try: 
        place=Place.objects.get(id=pk)
    except Place.DoesNotExist:
        raise Http404('صفحه یافت نشد')    
    context={
        'place':place
    }
    return render(request,"places/part_detail.html",context)

def download_path_garden(request):
    fs=FileSystemStorage()
    file_name="pdf_files/ferdowsGardenPath.pdf"
    if fs.exists(file_name):
        with fs.open(file_name) as pdf:
            response=HttpResponse(pdf,content_type="application/pdf")
            response['Content_Disposition']="attachment;filename='ferdowsGardenPath.pdf"
        
            return response
    else:
        HttpResponseNotFound('File not found ...')       

def show_time_rules(request):
    places=Place.objects.all()
    ticket_price=TicketPrice.objects.all() 
    context={
        'places':places,
        'ticket_price':ticket_price,
    }    
    return render(request,'places/time_rules.html',context)

def contact_view(request):
    form=MessageForm(request.POST)
    if form.is_valid():
        cd=form.cleaned_data
        msg=Message()
        msg.full_name=cd['full_name']
        msg.email=cd['email']
        msg.subject=cd['subject']
        msg.message=cd['message']
        msg.save()
        messages.success(request,"پیام شما ارسال شد","success")
        return redirect("main:index")
    return render(request,'places/contact.html',{'form':form})