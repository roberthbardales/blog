from .base import *
# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True

ALLOWED_HOSTS = []

# Database
# https://docs.djangoproject.com/en/2.2/ref/settings/#databases

DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',
        'NAME': get_secret('DB_NAME'),
        'USER': get_secret('USER'),
        'PASSWORD': get_secret('PASSWORD'),
        'HOST': 'localhost',
        'PORT': '5432',
    }
}
# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/2.2/howto/static-files/

STATIC_URL = '/static/'
STATICFILES_DIRS = [BASE_DIR.child('static')]

MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR.child('media')

# CKEDITOR SETTINGS
CKEDITOR_UPLOAD_PATH = 'uploads/'
CKEDITOR_IMAGE_BACKEND = 'pillow'
CKEDITOR_JQUERY_URL = 'https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js'

CKEDITOR_CONFIGS = {
    'default': {
        'toolbar': 'Custom',
        'toolbar_Custom' : [
            ['Bold', 'Italic', 'Underline'],
            ['NumberedList', 'BulletedList', '-', 'OutIdent', 'Ident', '-', 'JustifyLeft', 'JustifyRight', 'JustifyCenter'],
            ['TextColor', 'Format', 'FontSize', 'Link'],
            #['Smiley', 'Image', 'Iframe'],
            ['Image', 'Smiley', 'Iframe'],
            ['RemoveFormat', 'Source'],
        ],
        'stylesSet':[
        ],
    },
    #     'special':{

    #     'toolbar':'Special',
    #     'toolbar_Special':[
    #         ['Bold','CodeSnippet'],
    #     ],
    #     'extraPlugins':'codesnippet',

    # }
}

#configuracion basica de ckeditor
# CKEDITOR_CONFIGS = {
#     'default': {
#         'toolbar': 'full',
#     },
# }


#configuracion de QUILL

# QUILL_CONFIGS = {
#     'default':{
#         'theme': 'snow',
#         'modules': {
#             'syntax': True,
#             'toolbar': [
#                 ['bold', 'italic', 'underline', 'strike'], 
#                 ['blockquote', 'code-block', 'link'],

#                 [{ 'header': 1 }, { 'header': 2 }, { 'header': 3 }],
#                 [{ 'list': 'ordered'}, { 'list': 'bullet' }],
#                 [{ 'script': 'sub'}, { 'script': 'super' }],
#                 [{ 'indent': '-1'}, { 'indent': '+1' }],
#                 [{ 'direction': 'rtl' }],

#                 [{ 'size': ['small', True, 'large', 'huge'] }],
#                 [{ 'header': [1, 2, 3, 4, 5, 6, False] }],

#                 [{ 'color': [] }, { 'background': [] }],
#                 [{ 'font': [] }],
#                 [{ 'align': [] }],

#                 ['clean']
#             ]
#         }
#     }
# }


# EMAIL SETTINGS
# EMAIL_USE_TLS = True
# EMAIL_HOST = 'smtp.gmail.com'
# EMAIL_HOST_USER = get_secret('EMAIL')
# EMAIL_HOST_PASSWORD = get_secret('PASS_EMAIL')
# EMAIL_PORT = 587