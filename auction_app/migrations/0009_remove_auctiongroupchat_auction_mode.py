# Generated by Django 4.2.14 on 2024-08-05 13:02

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('auction_app', '0008_auctiongroupchat_auction_mode'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='auctiongroupchat',
            name='auction_mode',
        ),
    ]