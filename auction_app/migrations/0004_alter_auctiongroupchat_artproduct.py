# Generated by Django 4.2.14 on 2024-07-30 15:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0010_remove_artproduct_profile_pic'),
        ('auction_app', '0003_auctiongroupchat_artproduct_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='auctiongroupchat',
            name='Artproduct',
            field=models.OneToOneField(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, to='artapp.artproduct'),
        ),
    ]