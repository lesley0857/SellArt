# Generated by Django 4.2.14 on 2024-08-05 12:56

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('auction_app', '0007_remove_auctiongroup_user_online_and_more'),
    ]

    operations = [
        migrations.AddField(
            model_name='auctiongroupchat',
            name='auction_mode',
            field=models.BooleanField(default=False, null=True),
        ),
    ]
