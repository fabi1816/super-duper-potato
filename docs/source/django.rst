Django
======

`Django <https://www.djangoproject.com/>`_ it's the framework used for developing this multi-app site.

It is not a trivial framework like `Flask <https://flask.palletsprojects.com>`_ when you can understand everything clearly; Django has its own way of doing things.

Project structure
-----------------

.. code-block:: sh

  super-duper-potato: Project root
  |   readme.md
  |   requirements.txt
  |
  +---docs: Sphinx documentation
  |
  \---potato-website: Project container folder, its name can be changed
      |   manage.py: Command-line utility to interact with this Django project
      |
      +---potatosite: Actual Python package for the Django web project
      |       asgi.py: Entry-point for ASGI-compatible web servers
      |       settings.py: Settings/configuration for this Django project
      |       urls.py: The URL declarations for this Django project, a "table of contents" of sorts
      |       wsgi.py: Entry-point for WSGI-compatible web servers
      |
      +---recipes: Houses the recipes application
      |   |   admin.py
      |   |   apps.py
      |   |   models.py: The data models of the recipes application
      |   |   tests.py: Tests for the recipes application
      |   |   urls.py: URL mappings for the recipes application
      |   |   views.py: Contains the classes that drive the pages and their data
      |   |
      |   +---static
      |   |   |
      |   |   \---recipes: Contains the static resources for the recipes application
      |   |       |
      |   |       \---images
      |   |
      |   +---templates
      |   |   |
      |   |   \---recipes: Contains the templates for the recipes application
      |   |
      |   \---migrations: The database migrations for the recipes application
      |
      \---index: Houses the custom portal directory application

Useful commands
---------------

.. code-block:: sh
  :caption: Run development server

  > python manage.py runserver


.. code-block:: sh
  :caption: Add new application to the Django project:

  > python manage.py startapp NEW_APP_NAME

New application steps
^^^^^^^^^^^^^^^^^^^^^

After adding a new application to the Django project we need to configure it:

1. Create the data models in ``models.py``
2. Register the data models in ``admin.py`` (if the **admin** application is installed)
3. Create the views of the application in ``views.py``
4. Create the templates for the views in ``templates/NEW_APP_NAME/*.html``
5. Add the static resources for the templates in ``static/NEW_APP_NAME/``
6. Register the views URLs in ``urls.py`` (create the file if it does not exists)
7. Add the application to the project's **INSTALLED_APPS** variable in ``DJANGO_PROJECT/settings.py``
8. Include the application URL's pattern in the project's **urlpatterns** variable in ``DJANGO_PROJECT/urls.py``
9. Create and run the migrations (database tasks)
10. Profit!

Migrations (database tasks)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. code-block:: sh
  :caption: Create database migrations for changes in the data models

  > python manage.py makemigrations

These migrations should be committed to version control to be deployed, and executed in production deploy.

.. code-block:: sh
  :caption: Check what SQL the migrations will execute with

  > python manage.py sqlmigrate APP_NAME MIGRATION_ID

.. code-block:: sh
  :caption: Apply all needed migrations to the database

  > python manage.py migrate

.. caution::
  The data won't be migrated, you need to do it manually

Some of the migrations are for the default Django applications, others for the data models for our applications

Default installed applications
------------------------------

These are defined in the ``potatosite.settings`` file by default:

* ``django.contrib.admin``: The admin site.
* ``django.contrib.auth``: An authentication system.
* ``django.contrib.contenttypes``: A framework for content types.
* ``django.contrib.sessions``: A session framework.
* ``django.contrib.messages``: A messaging framework.
* ``django.contrib.staticfiles``: A framework for managing static files.

.. note::
  Remember to delete the applications that will not be needed in the project

Database access
---------------

For dev we used sqlite, but for prod we need to use MySQL
To use the MySQL database we need to install drivers.

The default driver is `mysqlclient` which is a native (recommended) driver
We install `mysqlclient` with pip

There are some dependencies that we need to fulfill before we can install the native client.
According to the documentation we need the python3 and mysql development headers
`python3-devel ` and `mysql-devel ` can be installed with `yum/dnf`, I think...

Only there is no `mysql-devel` on the EC2 instance, maybe we can use `mariadb105-devel`?
Seems like it also needs `gcc`
Also, `python3-devel` seems like it is not enough, we need `python3.11-devel`
And with those it could install
