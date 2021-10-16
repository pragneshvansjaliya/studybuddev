from django.contrib import admin

# Register your models here.

from .models import Message, Room, Topic, UserProfile


admin.site.register(Room)

admin.site.register(Topic)

admin.site.register(Message)

admin.site.register(UserProfile)