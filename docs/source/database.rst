Database information
====================

We'll use a MySQL database from AWS

- The database name is `super_duper_potato`
- It is in a private subnet, so it is not reachable from outside the VPC
- It has a custom security group to connect, only, to the EC2 instance
- The EC2 instance has a custom security group that allows to connect to the database instance

Connect to the database with:

    `mysql -h <DATABASE_HOST> -P 3306 -u admin -p`

Security
--------

We cannot use the **admin** user for the application, we need a custom user with reduced access.

.. note::
    CREATE USER potato_user IDENTIFIED BY '<SECRET>';

Is we execute the command `SHOW GRANTS potato_user;` we'll see that it has no privileges.
We need to assign it privileges so that we can use the user for the application connection.

.. note::
    GRANT ALTER, CREATE, DROP, SELECT, INSERT, DELETE, UPDATE, INDEX, REFERENCES
    ON super_duper_potato.* TO potato_user;
