
from __future__ import absolute_import, unicode_literals
import os
from celery import Celery
from django.conf import settings
from celery.schedules import crontab

# Set the default Django settings module for the 'celery' program.
os.environ.setdefault('DJANGO_SETTINGS_MODULE', 'eshopperproject.settings')

app = Celery('eshopperproject')

app.config_from_object(settings, namespace='CELERY')

app.conf.beat_schedule = {
    'Start Auction': {
        'task': 'auction_app.tasks.auction_activation',
        'schedule': crontab(),
        # 'args': ()
    },
    'Deactivate Auction': {
        'task': 'auction_app.tasks.auction_deactivation',
        'schedule': crontab(),
        # 'args': ()
    },
}


# Load task modules from all registered Django apps.
app.autodiscover_tasks()


@app.task(bind=True)  # ignore_result=True)
def debug_task(self):
    print(f'Request: {self.request!r}')
