from celery import shared_task
import os
from django.template.loader import render_to_string
from django.conf import settings
import json
from django.core.mail import EmailMessage
import datetime
# from datetime import timedelta, date, time
from artapp.models import *


@shared_task(bind=True)
def auction_activation(self):
    allart = Artproduct.objects.all()
    for i in allart:
        if i.auction_activated == 'None':
            print('Nont none')
            artdate = [i.auction_time.day,
                       i.auction_time.hour,]
            today_date = [datetime.datetime.now().day,
                          datetime.datetime.now().hour,]
            print(f'{artdate}---{today_date}')
            if artdate == today_date:
                i.auction_activated = 'Activated'
                i.save()
                print(f' from ----- {i.name}')
        print('It is none')


@shared_task(bind=True)
def auction_deactivation(self):
    allart = Artproduct.objects.all()
    for i in allart:
        if i.auction_activated == 'Activated':
            print('Acivated Already')
            artdate = [i.auction_stop_time.day,
                       i.auction_stop_time.hour,]
            today_date = [datetime.datetime.now().day,
                          datetime.datetime.now().hour,]
            print(f'{artdate}---{today_date}')
            if artdate == today_date:
                i.auction_activated = 'Deactivated'
                i.save()
                print(f' Deactivated {i.name}')
        print('It is none')
