# Generated by Django 5.0.2 on 2024-05-08 18:56

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('workshops', '0002_rename_status_workshop_status_id'),
    ]

    operations = [
        migrations.RenameField(
            model_name='workshop',
            old_name='status_id',
            new_name='status',
        ),
    ]