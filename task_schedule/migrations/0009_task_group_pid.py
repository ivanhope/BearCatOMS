# Generated by Django 2.0 on 2019-05-24 13:45

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('task_schedule', '0008_single_tasks_k8s_log'),
    ]

    operations = [
        migrations.AddField(
            model_name='task_group',
            name='pid',
            field=models.CharField(default='', max_length=16),
        ),
    ]
