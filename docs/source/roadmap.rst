Development roadmap
===================

I have a lot of ideas and things that I want to try in this project.
I'll try to keep this organized

(More than a roadmap is a list of things I want)

+--------+------------------------------+
| Status | Main Functionality           |
+========+==============================+
|    80% | :ref:`potato-roadmap`        |
+--------+------------------------------+
|    60% | :ref:`recipes-roadmap`       |
+--------+------------------------------+
|    25% | :ref:`frontpage-roadmap`     |
+--------+------------------------------+
|     0% | :ref:`security-roadmap`      |
+--------+------------------------------+
|    30% | :ref:`documentation-roadmap` |
+--------+------------------------------+
|     0% | :ref:`cdci-roadmap`          |
+--------+------------------------------+
|     0% | :ref:`cloud-server-roadmap`  |
+--------+------------------------------+
|     0% | :ref:`miscellaneous-roadmap` |
+--------+------------------------------+

.. _potato-roadmap:

Main Potato site
----------------

This is the Django project itself, it's where all other applications live

+--------+----------------------------------------------+
| Status | Main Potato site                             |
+========+==============================================+
|   DONE | Build and what not, all done before the docs |
+--------+----------------------------------------------+
|        | Load environment secrets with .env           |
+--------+----------------------------------------------+
|        | Externalize the configurations               |
+--------+----------------------------------------------+
|        | Write tests                                  |
+--------+----------------------------------------------+


.. _recipes-roadmap:

Recipes Application
-------------------

A simple, and quite ugly, application that shows recipes.
Logged-in users can also access the recipes instructions

+--------+-------------------------------------------------+
| Status | Recipes Application                             |
+========+=================================================+
|   DONE | Hook recipes into the main potato               |
+--------+-------------------------------------------------+
|   DONE | Define the recipes model                        |
+--------+-------------------------------------------------+
|   DONE | Add recipes data                                |
+--------+-------------------------------------------------+
|   DONE | Add limited functionality for non-logged users  |
+--------+-------------------------------------------------+
|        | Improve page styles                             |
+--------+-------------------------------------------------+
|        | Secure the detail page against non-logged users |
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
|   DONE | Hook frontpage into the main potato                                        |
+--------+----------------------------------------------------------------------------+
|        | Define a model for storing the available apps                              |
+--------+----------------------------------------------------------------------------+
|        | Change the implementation to retrieve the available apps from the database |
+--------+----------------------------------------------------------------------------+
|        | Improve page styles                                                        |
+--------+----------------------------------------------------------------------------+
|        | Write tests                                                                |
+--------+----------------------------------------------------------------------------+

.. _security-roadmap:

Security Application
--------------------

A hidden application with not visible pages that will handle all things related to the Auth0 operations

+--------+------------------------------------------------------+
| Status | Security Application                                 |
+========+======================================================+
|        | Hook security into the main potato                   |
+--------+------------------------------------------------------+
|        | Login and logout functionality                       |
+--------+------------------------------------------------------+
|        | Hook frontpage to the login and logout functionality |
+--------+------------------------------------------------------+
|        | Hook recipes to the login and logout functionality   |
+--------+------------------------------------------------------+
|        | Only allow registered users to be logged-in users    |
+--------+------------------------------------------------------+
|        | Write tests, if possible                             |
+--------+------------------------------------------------------+

.. _documentation-roadmap:

Documentation
-------------

A professional project *must* have decent documentation

+--------+-----------------------------------------------------------------+
| Status | Document the project                                            |
+========+=================================================================+
|    WIP | Add plenty of documentation while building the project          |
+--------+-----------------------------------------------------------------+
|        | Add the documentation as another application to the potato site |
+--------+-----------------------------------------------------------------+

.. _cdci-roadmap:

CD/CI System
------------

We want to automatize as much as possible and for that we'll use github actions and its tight integration with Azure

+--------+----------------------------------------+
| Status | Setup CD/CI system with github actions |
+========+========================================+
|        | Execute tests                          |
+--------+----------------------------------------+
|        | Check coverage ?                       |
+--------+----------------------------------------+
|        | Check code quality                     |
+--------+----------------------------------------+
|        | Check code style                       |
+--------+----------------------------------------+
|        | Build the documentation                |
+--------+----------------------------------------+
|        | Deploy the project to Azure            |
+--------+----------------------------------------+
|        | Deploy the documentation to Azure      |
+--------+----------------------------------------+

.. _cloud-server-roadmap:

Cloud Server
------------

We'll use the tight integration between github and Azure to deploy into that Cloud

+--------+-------------------------------------------------+
| Status | Azure cloud server                              |
+========+=================================================+
|        | Setup Azure account                             |
+--------+-------------------------------------------------+
|        | Setup Azure EC2 instance (or equivalent)        |
+--------+-------------------------------------------------+
|        | Setup security consideration                    |
+--------+-------------------------------------------------+
|        | Setup Nginx                                     |
+--------+-------------------------------------------------+
|        | Setup GUnicorn or some other application server |
+--------+-------------------------------------------------+
|        | Setup DNS                                       |
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
|        | * Think of more applications to add to the potato site              |
|        |                                                                     |
|        |     * APP: Are my neighbors fighting?                                 |
|        |                                                                     |
+--------+---------------------------------------------------------------------+
