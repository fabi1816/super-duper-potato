Development roadmap
===================

I have a lot of ideas and things that I want to try in this project.
I'll try to keep this organized

(More than a roadmap is a list of things I want)

+--------+----------------------------+
| Status | Main Functionality         |
+========+============================+
|    80% | Main potato site           |
+--------+----------------------------+
|    60% | Recipes app                |
+--------+----------------------------+
|    25% | Frontpage app              |
+--------+----------------------------+
|     0% | Security app               |
+--------+----------------------------+
|    30% | Document the project       |
+--------+----------------------------+
|     0% | CD/CI System               |
+--------+----------------------------+
|     0% | Cloud Server               |
+--------+----------------------------+
|     0% | Miscellaneous              |
+--------+----------------------------+

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

FrontPage Application
---------------------

A very simple applications that shows a frontpage with all available applications in the potato site

+--------+----------------------------------------------------------------------------+
| Status | Frontpage Application                                                      |
+========+============================================================================+
|   DONE | Hook frontpage into the main potato                                        |
+--------+----------------------------------------------------------------------------+
|        | Define a model for storing the avaiable apps                               |
+--------+----------------------------------------------------------------------------+
|        | Change the implementation to retrieve the available apps from the database |
+--------+----------------------------------------------------------------------------+
|        | Improve page styles                                                        |
+--------+----------------------------------------------------------------------------+

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

Documentation
-------------

A professional project *must* have decent documentation

+--------+-----------------------------------------------------------------+
| Status | Document the project                                            |
+========+=================================================================+
|    WIP | Add plenty of documentation while builing the project           |
+--------+-----------------------------------------------------------------+
|        | Add the documentation as another application to the potato site |
+--------+-----------------------------------------------------------------+

CD/CI System
------------

We want to automatize as much as possible and for that we'll use github actions and its thight integration with Azure

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

Cloud Server
------------

We'll use the thight integration between github and Azure to deploy into that Cloud

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

Miscellaneous
-------------

Others thoughts that we might do, or not, just random ideas and posibilities for this project

+--------+---------------------------------------------------------------------+
| Status | Miscellaneous                                                       |
+========+=====================================================================+
|        | Mini-GPT application? (Perhaps trained on some spanish literature?) |
+--------+---------------------------------------------------------------------+
|        | Think of more applications to add to the potato site                |
+--------+---------------------------------------------------------------------+
