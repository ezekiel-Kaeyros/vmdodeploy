# Generated by Django 4.2.1 on 2023-07-04 10:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('project', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='projetmodel',
            name='sponsorLogoUrl',
            field=models.ImageField(blank=True, null=True, upload_to='logo_sponsor'),
        ),
        migrations.AlterField(
            model_name='projetmodel',
            name='link',
            field=models.CharField(default=' ', max_length=255),
        ),
    ]
