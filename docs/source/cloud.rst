Cloud Analysis
==============

Objective
---------

The Super-dupper potato site is a portfolio-like website for Python and Django that demonstrates several skills that the author (me) possesses.
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

+----------------+----------+-------------+--------+-----------------+------------------------------------------+
|    Offering    | Is free? | Free limits | SQL db | Virtual machine |  Special Notes                           |
+================+==========+=============+========+=================+==========================================+
|            AWS |      Yes |   12 months |    Yes |             Yes | * 750 free hours by month                |
|                |          |             |        |                 | * Need to setup a billing alert          |
|                |          |             |        |                 | * Pay-as-you-go model                    |
+----------------+----------+-------------+--------+-----------------+------------------------------------------+
|          Azure |      Yes |   12 months |    Yes |             Yes | * 750 free hours by month                |
|                |          |             |        |                 | * Pay-as-you-go model                    |
+----------------+----------+-------------+--------+-----------------+------------------------------------------+
|            GCP |      Yes |   Unlimited |     No |             Yes | * 1 free small instance per month        |
|                |          |             |        |                 | * ~720 free hours                        |
|                |          |             |        |                 | * App Engine is similar to CloudFoundry  |
|                |          |             |        |                 | * No standalone SQL database             |
+----------------+----------+-------------+--------+-----------------+------------------------------------------+
|         Heroku |       No |         N/A |    Yes |             N/A | * Similar to CloudFoundry                |
|                |          |             |        |                 | * Everything is magically configured     |
|                |          |             |        |                 | * No free tier                           |
+----------------+----------+-------------+--------+-----------------+------------------------------------------+
| PythonAnyWhere |      Yes |         N/A |    Yes |             N/A | * No Nginx or Apache config              |
|                |          |             |        |                 | * Similar to CloudFoundry                |
|                |          |             |        |                 | * Everything is magically configured     |
|                |          |             |        |                 | * Includes a sub-domain of sorts         |
|                |          |             |        |                 | * One webapp in the free tier            |
|                |          |             |        |                 | * MySQL DB in the free tier, I think     |
+----------------+----------+-------------+--------+-----------------+------------------------------------------+
