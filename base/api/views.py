from django.http import JsonResponse
from base.models import Room, Topic
from rest_framework.decorators import api_view
from rest_framework.response import Response
from .serializers import RoomSerializer
from base.api import serializers


@api_view(['GET'])
def rooms(request):
    rooms = Room.objects.all()
    serializers = RoomSerializer(rooms, many=True)
    return Response(serializers.data)
