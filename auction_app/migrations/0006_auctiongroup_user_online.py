# Generated by Django 4.2.14 on 2024-08-03 11:31

from django.conf import settings
from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        migrations.swappable_dependency(settings.AUTH_USER_MODEL),
        ('auction_app', '0005_alter_auctiongroupchat_artproduct'),
    ]

    operations = [
        migrations.AddField(
            model_name='auctiongroup',
            name='user_online',
            field=models.ManyToManyField(blank=True, null=True, related_name='online_in_group', to=settings.AUTH_USER_MODEL),
        ),
    ]
