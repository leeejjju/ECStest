from django.shortcuts import render
from django.http import HttpResponse

def health_check(request):
    return HttpResponse("OK", status=200)

def index(request):
    return render(request, 'index.html')

