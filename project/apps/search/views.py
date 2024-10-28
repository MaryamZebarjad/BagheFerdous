
from django.views import View
from django.db.models import Q
from apps.memories.models import Memory 
from apps.workshops.models import Workshop 
from django.shortcuts import render, redirect

class SearchResultsView(View):
    def get(self,request,*args,**kwargs): 
        query=self.request.GET.get("q") 
        memories=Memory.objects.filter( 
            Q(memory_title__icontains=query)|Q(memory_text__icontains=query)
        )
        workshops=Workshop.objects.filter(
            Q(title__icontains=query)|Q(place__icontains=query)
        )
        context={
            "memories":memories,
            "workshops":workshops
        }
        return render(request,"search/search_results.html",context)
