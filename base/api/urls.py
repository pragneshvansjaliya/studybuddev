from django.urls import path
from . import views

urlpatterns = [
    path('rooms/', views.rooms, name='rooms'),
    # path('activity/', views.activityPage, name='activity'),
]