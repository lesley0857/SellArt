# Generated by Django 4.2.9 on 2024-07-05 23:30

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0003_artproduct_owner'),
    ]

    operations = [
        migrations.AddField(
            model_name='artproduct',
            name='images',
            field=models.ImageField(blank=True, default='/variac.jpeg/', null=True, upload_to='images'),
        ),
        migrations.CreateModel(
            name='ArtpictureModel',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('file', models.FileField(blank=True, null=True, upload_to='images')),
                ('pic_name', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='artapp.artproduct')),
            ],
        ),
    ]