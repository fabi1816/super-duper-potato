Development roadmap
===================

I have a lot of ideas and things that I want to try in this project.
I'll try to keep this organized

(More than a roadmap is a list of things I want)

+--------+------------------------------+
| Status | Main Functionality           |
+========+==============================+
|    95% | :ref:`potato-roadmap`        |
+--------+------------------------------+
|    90% | :ref:`recipes-roadmap`       |
+--------+------------------------------+
|    80% | :ref:`frontpage-roadmap`     |
+--------+------------------------------+
|    70% | :ref:`security-roadmap`      |
+--------+------------------------------+
|    80% | :ref:`documentation-roadmap` |
+--------+------------------------------+
|    90% | :ref:`cdci-roadmap`          |
+--------+------------------------------+
|   100% | :ref:`cloud-server-roadmap`  |
+--------+------------------------------+
|    N/A | :ref:`miscellaneous-roadmap` |
+--------+------------------------------+

.. _potato-roadmap:

Main Potato site
----------------

This is the Django project itself, it's where all other applications live

+--------+----------------------------------------------+
| Status | Main Potato site                             |
+========+==============================================+
|   100% | Build and what not, all done before the docs |
+--------+----------------------------------------------+
|   100% | Load environment secrets with .env           |
+--------+----------------------------------------------+
|   100% | Externalize the configurations               |
+--------+----------------------------------------------+
|   100% | Secure the site with HTTPS                   |
+--------+----------------------------------------------+
|   100% | Use a real database connection               |
+--------+----------------------------------------------+
|        | Write tests, if possible                     |
+--------+----------------------------------------------+


.. _recipes-roadmap:

Recipes Application
-------------------

A simple, and quite ugly, application that shows recipes.
Logged-in users can also access the recipes instructions

+--------+-------------------------------------------------+
| Status | Recipes Application                             |
+========+=================================================+
|   100% | Hook recipes into the main potato               |
+--------+-------------------------------------------------+
|   100% | Define the recipes model                        |
+--------+-------------------------------------------------+
|   100% | Add recipes data                                |
+--------+-------------------------------------------------+
|   100% | Add limited functionality for non-logged users  |
+--------+-------------------------------------------------+
|        | Improve page styles                             |
+--------+-------------------------------------------------+
|   100% | Secure the detail page against non-logged users |
+--------+-------------------------------------------------+
|        | Add images to the recipes                       |
+--------+-------------------------------------------------+
|        | Write tests                                     |
+--------+-------------------------------------------------+

.. _frontpage-roadmap:

FrontPage Application
---------------------

A very simple applications that shows a frontpage with all available applications in the potato site

+--------+----------------------------------------------------------------------------+
| Status | Frontpage Application                                                      |
+========+============================================================================+
|   100% | Hook frontpage into the main potato                                        |
+--------+----------------------------------------------------------------------------+
|   100% | Define a model for storing the available apps                              |
+--------+----------------------------------------------------------------------------+
|   100% | Change the implementation to retrieve the available apps from the database |
+--------+----------------------------------------------------------------------------+
|        | Improve page styles                                                        |
+--------+----------------------------------------------------------------------------+
|        | Write tests                                                                |
+--------+----------------------------------------------------------------------------+

.. _security-roadmap:

Security Application
--------------------

A hidden application with not visible pages that will handle all things related to the Auth0 operations

+--------+-----------------------------------------------------------------------------------+
| Status | Security Application                                                              |
+========+===================================================================================+
|   100% | Hook security into the main potato                                                |
+--------+-----------------------------------------------------------------------------------+
|   100% | Login and logout functionality                                                    |
+--------+-----------------------------------------------------------------------------------+
|   100% | Configure Auth0 to handle this in localhost                                       |
+--------+-----------------------------------------------------------------------------------+
|   100% | Hook frontpage to the login and logout functionality                              |
+--------+-----------------------------------------------------------------------------------+
|   100% | Hook recipes to the login and logout functionality                                |
+--------+-----------------------------------------------------------------------------------+
|   100% | Only allow registered users to be logged-in users                                 |
+--------+-----------------------------------------------------------------------------------+
|        | Make the login/logout/callback return to the page that the user logged in from    |
+--------+-----------------------------------------------------------------------------------+
|        | Write tests, if possible                                                          |
+--------+-----------------------------------------------------------------------------------+

.. _documentation-roadmap:

Documentation
-------------

A professional project *must* have decent documentation

+--------+-----------------------------------------------------------------+
| Status | Document the project                                            |
+========+=================================================================+
|    70% | Add plenty of documentation while building the project          |
+--------+-----------------------------------------------------------------+
|   100% | Add the documentation as another application to the potato site |
+--------+-----------------------------------------------------------------+

.. _cdci-roadmap:

CD/CI System
------------

We want to automatize as much as possible and for that we'll use github actions and its tight integration with Azure

+--------+----------------------------------------+
| Status | CD/CI system                           |
+========+========================================+
|   100% | Setup basic github actions             |
+--------+----------------------------------------+
|   100% | Execute tests                          |
+--------+----------------------------------------+
|        | Check coverage ?                       |
+--------+----------------------------------------+
|        | Check code quality                     |
+--------+----------------------------------------+
|        | Check code style                       |
+--------+----------------------------------------+
|   100% | Build the documentation                |
+--------+----------------------------------------+
|   100% | Deploy the project to the cloud        |
+--------+----------------------------------------+
|   100% | Deploy the documentation to the cloud  |
+--------+----------------------------------------+

.. note::
    Deploying code to the cloud seems to be of some complexity.
    We'll need to analyze it in its own space: :doc:`deployment`

.. _cloud-server-roadmap:

Cloud Server
------------

We wanted to use Azure for its tight integration with Github, however that is not possible within our budget (0$).

.. note::
    There are no *free* Azure nor AWS product that fulfills our needs for the project
    We need to evaluate more options: :doc:`cloud`

+--------+-------------------------------------------------+
| Status | Cloud server                                    |
+========+=================================================+
|   100% | Setup cloud account                             |
+--------+-------------------------------------------------+
|   100% | Setup cloud database instance                   |
+--------+-------------------------------------------------+
|   100% | Setup cloud server instance                     |
+--------+-------------------------------------------------+
|   100% | Setup security consideration                    |
+--------+-------------------------------------------------+
|   100% | Get a domain name for this application          |
+--------+-------------------------------------------------+
|   100% | Configure Auth0 to handle this domain           |
+--------+-------------------------------------------------+
|   100% | Setup Nginx                                     |
+--------+-------------------------------------------------+
|   100% | Setup GUnicorn                                  |
+--------+-------------------------------------------------+

.. _miscellaneous-roadmap:

Miscellaneous
-------------

Others thoughts that we might do, or not, just random ideas and possibilities for this project

+--------+---------------------------------------------------------------------+
| Status | Miscellaneous                                                       |
+========+=====================================================================+
|        | Mini-GPT application? (Perhaps trained on some spanish literature?) |
+--------+---------------------------------------------------------------------+
|        | About page with information about the author                        |
+--------+---------------------------------------------------------------------+
|        | Extract the common styles from the pages                            |
+--------+---------------------------------------------------------------------+
|        | * Think of more applications to add to the potato site              |
|        |                                                                     |
|        |     * APP: Are my neighbors fighting?                               |
|        |                                                                     |
+--------+---------------------------------------------------------------------+
