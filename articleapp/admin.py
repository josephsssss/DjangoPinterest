from django.contrib import admin

# Register your models here.
from .models import Article


@admin.register(Article)
class article_admin(admin.ModelAdmin):
    list_display = ['writer', 'title', 'created_at']

