Auth0
=====

A 3rd party tool for authentication and authorization
Auth0 simplifies a lot since it already implements federated access as well as custom user-pass login

Configurations
--------------

* [Auth0-Site] Allowed callback URLs: ``http://127.0.0.1:8000/recipes/callback``

  * ``Auth0`` will callback to this, after the user is authenticated, so as to be redirected to the appropiate URL

* [Auth0-Site] Allowed logout URLs: ``http://127.0.0.1:8000/recipes/`` the ending ``/`` can be needed

  * The ``logout`` link in the site goes to the local ``logout`` view-method
  * The ``logout`` view-method calls back to ``Auth0`` with a ``returnTo`` parameter
  * This ``returnTo`` parameter/address/URL is the one that needs to be defined in the ``Auth0`` dashboard field

* [Django] Login method: Calls ``Auth0`` passing it the absolute URI to the ``callback`` method
* [Django] Logout method: Clears the session and redirects to an ``Auth0`` logout URL passing the ``returnTo`` URL
* [Django] Callback method: Gets the autorization token and redirects to an appropiate URL in the site

  * This is, probably, the place to link the Auth0 to the default authorization app in Django

  These URLs are for localhost, clearly they need to be modified for production deploy

Securing the site
-----------------

We don't want any unauthorized user to access the site, what do we do?
We can tied the user authenticated by Auth0 with an existing user in the default Django admin and authorization application

How? in the callback view-method we know that the user returned from Auth0 is authenticated, so, we search for a matching user in the admin models, in this instance we use the e-mail; it should be unique between all possible users.
This user is then logged in with the default authorization application method ``login`` and voila! the user is logged.
We cannot forget to logout the user with the default authorization application method ``logout`` in the logout view-method

Once we have this in place we can secure the applications and the views with the standard ``login_required`` and ``permission_required`` decorators/mixins/etc.
