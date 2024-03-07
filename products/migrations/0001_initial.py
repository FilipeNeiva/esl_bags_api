# Generated by Django 5.0.3 on 2024-03-07 14:33

import django.db.models.deletion
from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Brand',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=30)),
                ('is_active', models.BooleanField(blank=True, default=True)),
            ],
        ),
        migrations.CreateModel(
            name='Product',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('name', models.CharField(max_length=40)),
                ('photo', models.ImageField(upload_to='media/images/products')),
                ('description', models.CharField(max_length=80)),
                ('price', models.FloatField()),
                ('is_active', models.BooleanField(blank=True, default=True)),
                ('brand', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, related_name='products', to='products.brand')),
            ],
        ),
    ]
