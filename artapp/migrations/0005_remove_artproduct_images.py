# Generated by Django 4.2.9 on 2024-07-05 23:31

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0004_artproduct_images_artpicturemodel'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='artproduct',
            name='images',
        ),
    ]