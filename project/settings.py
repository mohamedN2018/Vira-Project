import os
from pathlib import Path
from decouple import config
from django.utils.translation import gettext_lazy as _

# =========================
# BASE & SECURITY
# =========================
BASE_DIR = Path(__file__).resolve().parent.parent

SECRET_KEY = config('MY_SECRET_KEY')
DEBUG = config('DEBUG', default=True, cast=bool)

MAIN_DOMAIN = config('MAIN_DOMAIN', default='localhost')

ALLOWED_HOSTS = ["*"]

CORS_ORIGIN_WHITELIST = ["*"]

CSRF_TRUSTED_ORIGINS = [
    f"http://{MAIN_DOMAIN}",
    f"https://{MAIN_DOMAIN}",
]

# =========================
# APPLICATIONS
# =========================
INSTALLED_APPS = [
    'jazzmin',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',

    # Custom Apps
    'vira',
    'contact',
    'Portfolio',
    'Services',
    'clients',
    'owner',
    'team',
    'about',
    'about_all',
    'Pricing',
]

# =========================
# MIDDLEWARE
# =========================
MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.locale.LocaleMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

# =========================
# URLS & WSGI
# =========================
ROOT_URLCONF = 'project.urls'

WSGI_APPLICATION = 'project.wsgi.application'

# =========================
# TEMPLATES
# =========================
TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [BASE_DIR / 'templates'],  # استخدم BASE_DIR بدل os.path.join
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.template.context_processors.i18n',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

# =========================
# DATABASE
# =========================
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.sqlite3',
        'NAME': BASE_DIR / 'db.sqlite3',
    }
}

# =========================
# PASSWORD VALIDATION
# =========================
AUTH_PASSWORD_VALIDATORS = [
    {'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator'},
    {'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator'},
    {'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator'},
    {'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator'},
]

# =========================
# INTERNATIONALIZATION
# =========================
LANGUAGE_CODE = 'ar'
TIME_ZONE = 'UTC'
USE_I18N = True
USE_TZ = True

LANGUAGES = [
    ('ar', _('Arabic')),
    ('en', _('English')),
]

LOCALE_PATHS = [
    BASE_DIR / 'locale',
]

# =========================
# STATIC & MEDIA
# =========================
STATIC_URL = '/static/'
STATICFILES_DIRS = [
    BASE_DIR / "static",
    "/usr/src/app/static/",
]
STATIC_ROOT = BASE_DIR / "staticfiles"

MEDIA_URL = '/media/'
MEDIA_ROOT = BASE_DIR / 'media'

# STATIC_URL = '/static/'
# STATICFILES_DIRS = [
#     BASE_DIR / "static",
#     "/usr/src/app/static/",
# ]
# STATIC_ROOT = BASE_DIR / "staticfiles"

# MEDIA_URL = '/media/'
# MEDIA_ROOT = BASE_DIR / 'media'

# =========================
# DEFAULT SETTINGS
# =========================
DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# =========================
# EMAIL
# =========================
EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
EMAIL_HOST = 'smtp.gmail.com'
EMAIL_HOST_USER = 'moh24832@gmail.com'
EMAIL_HOST_PASSWORD = 'yfvmxzmccwjwukjd'
EMAIL_USE_TLS = True
EMAIL_PORT = 587  # خليه رقم مش نص

# =========================
# JAZZMIN CONFIG
# =========================
JAZZMIN_SETTINGS = {
    "site_title": "Vera Admin",
    "site_header": "Vera",
    "site_brand": "Vera",
    "site_logo": "/assets/img/logo.jpg",
    "login_logo": "/assets/img/logo.jpg",
    "login_logo_dark": "/assets/img/logo.jpg",
    "site_logo_classes": "img-circle",
    "site_icon": "/assets/img/logo.jpg",
    "welcome_sign": "Welcome to the Vera",
    "copyright": "Vera",
    "search_model": ["auth.User", "auth.Group"],
    "user_avatar": None,

    "topmenu_links": [
        {"name": "Home", "url": "admin:index", "permissions": ["auth.view_user"]},
        {"model": "auth.User"},
        {"app": "books"},
    ],

    "usermenu_links": [
        {"model": "auth.user"}
    ],

    "show_sidebar": True,
    "navigation_expanded": False,
    "hide_apps": [],
    "hide_models": [],
    "order_with_respect_to": ["auth", "books", "books.author", "books.book"],

    "icons": {
        "auth": "fas fa-users-cog",
        "auth.user": "fas fa-user",
        "auth.Group": "fas fa-users",
    },

    "default_icon_parents": "fas fa-chevron-circle-right",
    "default_icon_children": "fas fa-circle",

    "related_modal_active": False,
    "custom_css": None,
    "custom_js": None,
    "use_google_fonts_cdn": True,
    "show_ui_builder": False,

    "changeform_format": "horizontal_tabs",
    "changeform_format_overrides": {"auth.user": "collapsible", "auth.group": "vertical_tabs"},
    "language_chooser": True,
}

# import os
# from pathlib import Path
# from decouple import config
# from django.utils.translation import gettext_lazy as _


# # Build paths inside the project like this: BASE_DIR / 'subdir'.
# BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))

# # Quick-start development settings - unsuitable for production
# # See https://docs.djangoproject.com/en/4.0/howto/deployment/checklist/


# DEBUG = True

# # =========================
# # SECURITY
# # =========================
# SECRET_KEY = config('MY_SECRET_KEY')
# DEBUG = True

# MAIN_DOMAIN = config('MAIN_DOMAIN', default='localhost')
# ALLOWED_HOSTS = ["*"]

# CORS_ORIGIN_WHITELIST = ["*"]

# CSRF_TRUSTED_ORIGINS = [
#     f"{MAIN_DOMAIN}"
# ]

# # Application definition

# INSTALLED_APPS = [
#     'jazzmin',
#     'django.contrib.admin',
#     'django.contrib.auth',
#     'django.contrib.contenttypes',
#     'django.contrib.sessions',
#     'django.contrib.messages',
#     'django.contrib.staticfiles',
#     'vira',
#     'contact',
#     'Portfolio',
#     'Services',
#     'clients',
#     'owner',
#     'team',
#     'about',
#     'about_all',
#     'Pricing',
# ]

# MIDDLEWARE = [
#     'django.middleware.security.SecurityMiddleware',
#     'django.contrib.sessions.middleware.SessionMiddleware',
#     'django.middleware.locale.LocaleMiddleware',
#     'django.middleware.common.CommonMiddleware',
#     'django.middleware.csrf.CsrfViewMiddleware',
#     'django.contrib.auth.middleware.AuthenticationMiddleware',
#     'django.contrib.messages.middleware.MessageMiddleware',
#     'django.middleware.clickjacking.XFrameOptionsMiddleware',
# ]

# ROOT_URLCONF = 'project.urls'

# TEMPLATES = [
#     {
#         'BACKEND': 'django.template.backends.django.DjangoTemplates',
#         'DIRS': [os.path.join('templates')],
#         'APP_DIRS': True,
#         'OPTIONS': {
#             'context_processors': [
#                 'django.template.context_processors.debug',
#                 'django.template.context_processors.request',
#                 'django.contrib.auth.context_processors.auth',
#                 'django.template.context_processors.i18n',
#                 'django.contrib.messages.context_processors.messages',
#             ],
#         },
#     },
# ]

# WSGI_APPLICATION = 'project.wsgi.application'

# # Database
# # https://docs.djangoproject.com/en/4.0/ref/settings/#databases

# DATABASES = {
#     'default': {
#         'ENGINE': 'django.db.backends.sqlite3',
#         'NAME': os.path.join(BASE_DIR, 'db.sqlite3'),
#     }
# }

# # Password validation
# # https://docs.djangoproject.com/en/4.0/ref/settings/#auth-password-validators

# AUTH_PASSWORD_VALIDATORS = [
#     {
#         'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
#     },
#     {
#         'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
#     },
#     {
#         'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
#     },
#     {
#         'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
#     },
# ]

# # Internationalization
# # https://docs.djangoproject.com/en/4.0/topics/i18n/

# LANGUAGE_CODE = 'ar'

# TIME_ZONE = 'UTC'

# USE_I18N = True

# USE_TZ = True


# LANGUAGES = [
#     ('ar', _('Arabic')),
#     ('en', _('English')),
# ]

# LOCALE_PATHS = (
#     os.path.join(BASE_DIR, 'locale'),
# )

# # Static files (CSS, JavaScript, Images)
# # https://docs.djangoproject.com/en/4.0/howto/static-files/

# STATIC_URL = '/static/'

# STATICFILES_DIRS = [
#     BASE_DIR / "static",
#     "/usr/src/app/static/",
# ]
# MEDIA_URL = '/media/'
# MEDIA_ROOT = BASE_DIR / 'media'

# BASE_DIR = Path(__file__).resolve().parent.parent
# STATIC_ROOT = BASE_DIR / "staticfiles"


# # Default primary key field type
# # https://docs.djangoproject.com/en/3.2/ref/settings/#default-auto-field

# DEFAULT_AUTO_FIELD = 'django.db.models.BigAutoField'

# EMAIL_BACKEND = 'django.core.mail.backends.smtp.EmailBackend'
# EMAIL_HOST = 'smtp.gmail.com'
# EMAIL_HOST_USER = 'moh24832@gmail.com'
# EMAIL_HOST_PASSWORD = 'yfvmxzmccwjwukjd'
# EMAIL_USE_TLS = True
# EMAIL_PORT = '587'

# JAZZMIN_SETTINGS = {
#     # title of the window (Will default to current_admin_site.site_title if absent or None)
#     "site_title": "Vera Admin",

#     # Title on the login screen (19 chars max) (defaults to current_admin_site.site_header if absent or None)
#     "site_header": "Vera",

#     # Title on the brand (19 chars max) (defaults to current_admin_site.site_header if absent or None)
#     "site_brand": "Vera",

#     # Logo to use for your site, must be present in static files, used for brand on top left
#     "site_logo": "/assets/img/logo.jpg",

#     # Logo to use for your site, must be present in static files, used for login form logo (defaults to site_logo)
#     "login_logo": "/assets/img/logo.jpg",

#     # Logo to use for login form in dark themes (defaults to login_logo)
#     "login_logo_dark": "/assets/img/logo.jpg",

#     # CSS classes that are applied to the logo above
#     "site_logo_classes": "img-circle",

#     # Relative path to a favicon for your site, will default to site_logo if absent (ideally 32x32 px)
#     "site_icon": "/assets/img/logo.jpg",

#     # Welcome text on the login screen
#     "welcome_sign": "Welcome to the Vera",

#     # Copyright on the footer
#     "copyright": "Vera",

#     # List of model admins to search from the search bar, search bar omitted if excluded
#     # If you want to use a single search field you dont need to use a list, you can use a simple string
#     "search_model": ["auth.User", "auth.Group"],

#     # Field name on user model that contains avatar ImageField/URLField/Charfield or a callable that receives the user
#     "user_avatar": None,

#     ############
#     # Top Menu #
#     ############

#     # Links to put along the top menu
#     "topmenu_links": [

#         # Url that gets reversed (Permissions can be added)
#         {"name": "Home",  "url": "admin:index", "permissions": ["auth.view_user"]},

#         # model admin to link to (Permissions checked against model)
#         {"model": "auth.User"},

#         # App with dropdown menu to all its models pages (Permissions checked against models)
#         {"app": "books"},
#     ],

#     #############
#     # User Menu #
#     #############

#     # Additional links to include in the user menu on the top right ("app" url type is not allowed)
#     "usermenu_links": [
#         {"model": "auth.user"}
#     ],

#     #############
#     # Side Menu #
#     #############

#     # Whether to display the side menu
#     "show_sidebar": True,

#     # Whether to aut expand the menu
#     "navigation_expanded": False,

#     # Hide these apps when generating side menu e.g (auth)
#     "hide_apps": [],

#     # Hide these models when generating side menu (e.g auth.user)
#     "hide_models": [],

#     # List of apps (and/or models) to base side menu ordering off of (does not need to contain all apps/models)
#     "order_with_respect_to": ["auth", "books", "books.author", "books.book"],

#     # Custom icons for side menu apps/models See https://fontawesome.com/icons?d=gallery&m=free&v=5.0.0,5.0.1,5.0.10,5.0.11,5.0.12,5.0.13,5.0.2,5.0.3,5.0.4,5.0.5,5.0.6,5.0.7,5.0.8,5.0.9,5.1.0,5.1.1,5.2.0,5.3.0,5.3.1,5.4.0,5.4.1,5.4.2,5.13.0,5.12.0,5.11.2,5.11.1,5.10.0,5.9.0,5.8.2,5.8.1,5.7.2,5.7.1,5.7.0,5.6.3,5.5.0,5.4.2
#     # for the full list of 5.13.0 free icon classes
#     "icons": {
#         "auth": "fas fa-users-cog",
#         "auth.user": "fas fa-user",
#         "auth.Group": "fas fa-users",
#     },
#     # Icons that are used when one is not manually specified
#     "default_icon_parents": "fas fa-chevron-circle-right",
#     "default_icon_children": "fas fa-circle",

#     #################
#     # Related Modal #
#     #################
#     # Use modals instead of popups
#     "related_modal_active": False,

#     #############
#     # UI Tweaks #
#     #############
#     # Relative paths to custom CSS/JS scripts (must be present in static files)
#     "custom_css": None,
#     "custom_js": None,
#     # Whether to link font from fonts.googleapis.com (use custom_css to supply font otherwise)
#     "use_google_fonts_cdn": True,
#     # Whether to show the UI customizer on the sidebar
#     "show_ui_builder": False,

#     ###############
#     # Change view #
#     ###############
#     # Render out the change view as a single form, or in tabs, current options are
#     # - single
#     # - horizontal_tabs (default)
#     # - vertical_tabs
#     # - collapsible
#     # - carousel
#     "changeform_format": "horizontal_tabs",
#     # override change forms on a per modeladmin basis
#     "changeform_format_overrides": {"auth.user": "collapsible", "auth.group": "vertical_tabs"},
#     # Add a language dropdown into the admin
#     "language_chooser": True,
# }
