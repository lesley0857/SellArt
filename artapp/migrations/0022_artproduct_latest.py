# Generated by Django 4.2.14 on 2025-02-18 23:15

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0021_alter_artpicturemodel_file'),
    ]

    operations = [
        migrations.AddField(
            model_name='artproduct',
            name='latest',
            field=models.BooleanField(blank=True, default=False, null=True),
        ),
    ]
