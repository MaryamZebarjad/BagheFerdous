import os
from django.http import HttpResponse, HttpResponseNotFound
from django.shortcuts import render,redirect
from django.db import models
from .models import *
from django.conf import settings
from django.core.files.storage import FileSystemStorage

def show_articles(request):
    articles=Article.objects.filter(is_active=True)
    articles_authors=Article.author.through.objects.all()
    authors=Author.objects.all()
    context={ 
        'articles':articles,
        'authors':authors,
        'articles_authors':articles_authors,
    }
    return render(request,'articles/blog.html',context)
    
def show_blog_details(request,slug):
    article=Article.objects.get(slug=slug)
    articles_authors=Article.objects.get(id=article.id).author.through.objects.all()
    authors=Author.objects.all()
    image_list=os.listdir(settings.MEDIA_ROOT+'/images/articles/article_'+str(article.id))
    article.view_number+=1
    article.save()
    context={
        'article':article,
        'articles_authors':articles_authors,
        'authors':authors,
        'image_list':image_list,
    }
    return render(request,'articles/blog_details.html',context)

def show_article_pdf (request,article_id): 
    fs=FileSystemStorage()
    filename='article_'+str(article_id)+'.pdf'
    file_path="pdf_files/"+filename
    if fs.exists(file_path):
        with fs.open(file_path) as pdf:
            response=HttpResponse(pdf,content_type ='application/pdf') 
            response['Content-Disposition']='inline;filename='+filename
        return response
    else: 
        return HttpResponseNotFound('The requested pdf file ws not found in our server')
    
    
    
    
  