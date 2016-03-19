from django.conf.urls import url, include
from django.contrib import admin

from main.views import index

urlpatterns = [
    url(r'^panel_control/', include(admin.site.urls)),
    url(r'^$', index, name='index')
]
