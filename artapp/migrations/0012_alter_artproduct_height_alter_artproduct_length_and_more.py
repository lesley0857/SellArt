# Generated by Django 4.2.14 on 2024-08-02 10:01

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0011_artproduct_frame_artproduct_height_artproduct_length_and_more'),
    ]

    operations = [
        migrations.AlterField(
            model_name='artproduct',
            name='height',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='artproduct',
            name='length',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='artproduct',
            name='weight',
            field=models.IntegerField(blank=True, null=True),
        ),
        migrations.AlterField(
            model_name='artproduct',
            name='width',
            field=models.IntegerField(blank=True, null=True),
        ),
    ]
