# Generated by Django 4.2.14 on 2024-08-06 12:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0015_alter_artproduct_auction_time'),
    ]

    operations = [
        migrations.AlterField(
            model_name='artproduct',
            name='auction_time',
            field=models.DateTimeField(blank=True, null=True),
        ),
    ]
