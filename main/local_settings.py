DEBUG = True

SECRET_KEY = 'r3e4qoq@3a#mw6(udz$esk4)9608j3r3)oi&jb9_nr!!3=g6g*'
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': 'service_of_recipes',
        'USER': 'recipe',
        'PASSWORD': "pass",
        'HOST': '',  # Set to empty string for localhost.
        'PORT': '',  # Set to empty string for default.
    },

}
TIME_ZONE = 'Asia/Yekaterinburg'
USE_TZ = True

LANGUAGE_CODE = 'ru-RU'

SHORT_DATE_FORMAT = 'd E'
TIME_FORMAT = 'H:i'

LANGUAGES = (
    ('ru', 'Russian'),
    ('en', 'English'),
)
USE_I18N = True
USE_L10N = False
