# Generated by Django 4.2.14 on 2024-08-18 23:06

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0018_artproduct_auction_stop_time'),
        ('cart', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='cartmodel',
            name='product',
        ),
        migrations.AddField(
            model_name='cartmodel',
            name='product',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='artapp.artproduct'),
        ),
    ]
