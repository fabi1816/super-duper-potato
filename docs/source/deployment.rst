How to deploy the project
=========================

Deployment to Azure from Github seems very simple
However we are using AWS which uses a 3rd system to automate the deployment to its EC2 instances.

AWS CodeDeploy
--------------

Used by AWS to deploy code to EC2 instances, seems to be more of a pull model that the standard push model

It defines the "steps" of the deployment in an `AppSpec` file
This file, alongside the code is called a *revision*, and it's what gets deployed to the instances
A Deployment Group is a collection of EC2 instances

In CodeDeploy you define your deployment; where to get the revision (GitHub for us) and the deployment group
The CodeDeploy agent in each instance polls CodeDeploy to determine what, when to pull from where
The CodeDeploy agent finally follows the instructions in the `AppSpec` file to execute the deployment

All the information about a CodeDeploy deployment is defined in the CodeDeploy console as an *application*

We'll probably need an *IAM instance profile* to allow the instance to pull the data from GitHub

Getting started steps
^^^^^^^^^^^^^^^^^^^^^

1. [Optional] Give programmatic access
    - This is for using the AWS CLI
2. Create a service role for CodeDeploy
    - A permission for an AWS service to access an AWS resource
    - Save the *ARN* value for the next step
    - Used in the deployment group creation
3. [Optional] Limit the CodeDeploy user's permissions
    - This is tied to the user's permission, not CodeDeploy
    - I won't do this
4. Create an *IAM instance profile* for the EC2 instance
    - Needed to pull from GitHub
    - The example I saw was for S3 only
5. Setup GitHub deployment
    1. Create deployment in the CodeDeploy console
    2. SignOff from GitHub
    3. Associate the deployment to the GitHub account

Steps execution
^^^^^^^^^^^^^^^

- Added a tag to the EC2 instance: `name: potato-ecs`
- Created the service role: `CodeDeployRole4PotatoEC2`
- Created the instance profile: `CodeDeploy4EC2-instance-profile`
- Need and application in GitHub
    - Plan a revision
    - Add an `AppSpec` file
- Attached the instance profile `CodeDeploy4EC2-instance-profile` to the EC2 instance
- Verified that the *AWS system manager* is installed in the EC2 instance
- Installed the CodeDeploy agent in the EC2 instance
- Create application: `Super-duper-potato-app`
- Create deployment group: `Potato-deployment-group`
    - Used the service role for CodeDeploy: `CodeDeployRole4PotatoEC2`
    - Installation of the CodeDeploy agent could have been done at this stage
    - Created **without** Load Balancing (single instance, makes no sense)
- Create a `Deployment`
    - Always needs the repository name: `fabi1816/super-duper-potato`
    - Always needs the full commit id that we want to deploy

.. note::
    Create a `Deployment` in CodeDeploy to, actually, deploy to the EC2 instance

Plan the revision
^^^^^^^^^^^^^^^^^

We need to gather all the source files and add a `AppSpec` file
For EC2 deployment it must be `appspec.yml`

- Copy the files
- Set the files permission
    - Does not seem necessary
- Complete the scripts
    - Stop app
    - Start app
    - Install dependencies
    - Build docs
    - Config app
    - Does not seem necessary to copy the deployment scripts
- Available hooks in order
    1. *ApplicationStop*
        - Used to stop the app
        - Can be used to remove installed packages
    2. *BeforeInstall*
        - Can be used for creating a backup of the current app
    3. *Install*
        - Internal; cannot be used
    4. *AfterInstall*
        - Can be used for configuring the app
    5. *ApplicationStart*
        - Used to start the app
    6. *ValidateService*
        - Used to verify the deployment
    7. *BeforeBlockTraffic*, *BlockTraffic* and *AfterBlockTraffic*
    8. *BeforeAllowTraffic*, *AllowTraffic* and *AfterAllowTraffic*
        - These are related to the load balancer

.. warning::
    Django cannot write anything to its directory because all the files are owned by root.
    We could change the permissions, or perhaps, because the execution is done by root, we won't need to.

Details
^^^^^^^

We are automating the deployment with the help of scripts
In order of execution these are:

- *stop-app.sh*
    - Stops `Gunicorn`
    - No need to stop `Nginx`, we'll just reload its configurations
    - [ ] Always fails, not sure why...
- *backup-prev.sh*
    - Deletes the old backup
    - Moves the currently deployed version to backup
    - Needs to be executed as root
- *set-permissions.sh*
    - Changes the owner of the code files to `ec2-user`
    - This avoids a lot of issues with the permissions and the scripts
- *install-dependencies.sh*
    - Installs all the python dependencies
- *build-docs.sh*
    - Builds the `Sphinx` documentation
- *config-app.sh*
    - Deploys the static content of the potato site
    - [ ] TODO: Deploys the documentation to the potato site
- *start-app.sh*
    - Loads the secrets into the environment
    - Starts `Gunicorn`
    - Reloads `Nginx` configurations
        - The new configuration file for `Nginx` is copied with the site's code
        - This works because we have a symlink pointing to it
