# Generated by Django 4.2.9 on 2024-06-28 23:39

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('artapp', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='artproduct',
            name='category',
            field=models.ForeignKey(blank=True, null=True, on_delete=django.db.models.deletion.CASCADE, related_name='category', to='artapp.category'),
        ),
    ]
