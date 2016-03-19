# Build paths inside the project like this: os.path.join(BASE_DIR, ...)
import os

BASE_DIR = os.path.dirname(os.path.dirname(__file__))

PROJECT_ROOT = os.path.realpath(os.path.dirname(__file__))

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = 'super_secret_key'

ALLOWED_HOSTS = ['localhost']

# Application definition

INSTALLED_APPS = (
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    # 'django.contrib.messages',
    'django.contrib.admin',
    'django.contrib.staticfiles',
)

MIDDLEWARE_CLASSES = (
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.auth.middleware.SessionAuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
)

ROOT_URLCONF = 'main.urls'
WSGI_APPLICATION = 'main.wsgi.application'
TEMPLATE_DIRS = ('templates',)
STATIC_URL = '/assets/'
STATIC_ROOT = BASE_DIR + STATIC_URL

STATICFILES_DIRS = (
    os.path.join(BASE_DIR, 'static'),
)

try:
    from .local_settings import *

    TEMPLATE_DEBUG = True
except ImportError:
    DEBUG = True
    TEMPLATE_DEBUG = DEBUG
    pass
