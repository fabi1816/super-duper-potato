from authlib.integrations.django_client import OAuth
from django.conf import settings
from django.contrib.auth import login as auth_login, logout as auth_logout
from django.contrib.auth.models import User
from django.shortcuts import redirect
from django.urls import reverse
from urllib.parse import quote_plus, urlencode


# Auth0 and OAuth configurations
oauth = OAuth()
oauth.register(
    name="auth0",
    client_id=settings.AUTH0_CLIENT_ID,
    client_secret=settings.AUTH0_CLIENT_SECRET,
    client_kwargs={
        "scope": "openid profile email",
    },
    server_metadata_url=f"https://{settings.AUTH0_DOMAIN}/.well-known/openid-configuration",
)



def login(request):
    # Go to Auth0 for logging, they handle that stuff
    return oauth.auth0.authorize_redirect(
        request, request.build_absolute_uri(reverse("security:callback"))
    )


def callback(request):
    # The user has been authenticated in Auth0, get its security token
    token = oauth.auth0.authorize_access_token(request)

    # Extract the user info from the token
    # The user info has fields like: name, nickname, picture, email, sid, etc.
    user_info = token["userinfo"]

    # If needed we can store the token in the request's session
    # request.session["user"] = token

    # See if we have a user registered with that email, if not we get an exception
    registered_user = User.objects.get(email=user_info["email"])

    # Login the found registered user to the default authentication Django application
    auth_login(request, registered_user)

    # Redirect to some page in the site
    # TODO: Return to the original page where the user logged in from
    return redirect(request.build_absolute_uri(reverse("frontpage:index")))


def logout(request):
    # Logout the currently logged in user from the default authentication Django application
    auth_logout(request)
    request.session.clear()

    encoded_params = urlencode(
        {
            # TODO: Return to the original page where the user logged out from
            "returnTo": request.build_absolute_uri(reverse("frontpage:index")),
            "client_id": settings.AUTH0_CLIENT_ID,
        },
        quote_via=quote_plus,
    )

    # Redirect to Auth0 for logging OUT the user
    return redirect(f"https://{settings.AUTH0_DOMAIN}/v2/logout?{encoded_params}")
