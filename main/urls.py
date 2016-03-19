from django.conf.urls import url, include
from django.contrib import admin

from main.views import index, search
urlpatterns = [
    url(r'^panel_control/', include(admin.site.urls)),
    url(r'^$', index, name='index'),
    url(r'^search/$', search, name='search')
]
