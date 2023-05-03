Cloud Analysis
==============

Objective
---------

The Super-duper potato site is a portfolio-like website for Python and Django that demonstrates several skills that the author (me) possesses.
We want to automate its deployment and secure it to a professional degree as well as make it accessible for any user.
For that we need our cloud provider to:

- Be free (as in beer)
- Have no time limit in its free offerings
- Have a minimum of capacity to make our site accessible within reason
- SQL databases
- Virtual Machines (or equivalent)
- Security and the ability to setup https
- Github integration
- Automate deployments
- Avoid fees and cost when the free limit is reached

Offerings
---------

+----------------+----------+-------------+--------+-----------------+-----------------------------------------+
|    Offering    | Is free? | Free limits | SQL db | Virtual machine |  Special Notes                          |
+================+==========+=============+========+=================+=========================================+
|            AWS |      Yes |   12 months |    Yes |             Yes | * 750 free hours by month               |
|                |          |             |        |                 | * Need to setup a billing alert         |
|                |          |             |        |                 | * Pay-as-you-go model                   |
+----------------+----------+-------------+--------+-----------------+-----------------------------------------+
|          Azure |      Yes |   12 months |    Yes |             Yes | * 750 free hours by month               |
|                |          |             |        |                 | * Pay-as-you-go model                   |
+----------------+----------+-------------+--------+-----------------+-----------------------------------------+
|            GCP |      Yes |   Unlimited |     No |             Yes | * 1 free small instance per month       |
|                |          |             |        |                 | * ~720 free hours                       |
|                |          |             |        |                 | * App Engine is similar to CloudFoundry |
|                |          |             |        |                 | * No standalone SQL database            |
+----------------+----------+-------------+--------+-----------------+-----------------------------------------+
|         Heroku |   **No** |         N/A |    Yes |             N/A | * Similar to CloudFoundry               |
|                |          |             |        |                 | * Everything is magically configured    |
|                |          |             |        |                 | * No free tier                          |
+----------------+----------+-------------+--------+-----------------+-----------------------------------------+
| PythonAnyWhere |      Yes |         N/A |    Yes |             N/A | * No Nginx or Apache config             |
|                |          |             |        |                 | * Similar to CloudFoundry               |
|                |          |             |        |                 | * Everything is magically configured    |
|                |          |             |        |                 | * Includes a sub-domain of sorts        |
|                |          |             |        |                 | * One webapp in the free tier           |
|                |          |             |        |                 | * MySQL DB in the free tier, I think    |
+----------------+----------+-------------+--------+-----------------+-----------------------------------------+

Evaluate Offerings
------------------

We discarded *Heroku* for not having a free tier

+----------------+------------------------------------------------+------------------------------------------+
|    Offerings   |                     Pros                       |                   Cons                   |
+================+================================================+==========================================+
|            AWS | * Already have basic knowledge                 | * Github integrations seems more complex |
|                | * Existing account                             | * Has a 12 month limit on the free tier  |
|                | * Can setup a billing alert                    |                                          |
|                | * Full server configuration will yield more XP |                                          |
+----------------+------------------------------------------------+------------------------------------------+
|          Azure | * Has a prettier UI                            | * Have no knowledge about the platform   |
|                | * Easy integration with Github                 | * Has a 12 month limit on the free tier  |
|                | * It is the one we originally wanted to use    |                                          |
|                | * Full server configuration will yield more XP |                                          |
+----------------+------------------------------------------------+------------------------------------------+
|            GCP | * Free tier has no time limit                  | * It has an *ugly* UI                    |
|                | * Full server configuration will yield more XP | * **Has no standalone SQL db**           |
|                | * Has good documentation                       | * The documentation is ugly              |
+----------------+------------------------------------------------+------------------------------------------+
| PythonAnyWhere | * Trivial configuration                        | * Magic configuration                    |
|                | * Includes sub-domain                          | * No HTTPS setup in the free tier        |
|                | * MySQL DB in the free tier, I think           |                                          |
+----------------+------------------------------------------------+------------------------------------------+

We discarded *GCP* for lack of SQL database
We discarded *PythonAnyWhere* for its trivial configuration, we are looking for a challenge

Conclusion
----------

We conclude nothing!
We are back at square one with *AWS* and *Azure* as options and the issue of only having 12 months of free use.

Thus we resolve:

- We'll deploy to *AWS*
  - Because the free 12 months are already running as of this writing
- When the 12 months are about to expire, we'll switch to *Azure* and a new account
