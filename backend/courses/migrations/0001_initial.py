# Generated by Django 4.2.1 on 2023-07-17 15:07

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='CourseModels',
            fields=[
                ('id', models.BigAutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(default='', max_length=200)),
                ('description', models.CharField(default='', max_length=200)),
                ('link', models.CharField(default='', max_length=200)),
                ('author', models.CharField(default='', max_length=200)),
                ('published', models.BooleanField(default=False)),
                ('createdAt', models.DateTimeField(auto_now_add=True)),
                ('editeAt', models.DateTimeField(auto_now_add=True)),
            ],
        ),
    ]
