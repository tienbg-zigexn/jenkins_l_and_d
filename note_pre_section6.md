# Jenkins Udemy Course Zero Hero

## struggle

- I don't have an international card (visa or mastercard) to register an aws
account right now. I had an account in the past, but I deleted it. Now what?
borrow my wife's one? Does she even have? Should my company provides this?

## sharing

- I will use an alternative to aws, cloudinary (free and don't require a card).
- most of jenkins' features are plugins.
- ssh plugin is outdated and has CVEs security risks => use `ssh remote_user@remote-host command …` instead.

## what this course shows so far

- create a jenkins container
- create a linux container (called remote-host from now)
- install ssh plugin to jenkins
- run commands both on jenkins container and the remote-host
- setup parameters so users of jenkins UI can click and choose parameters
- create a mysql container
- install mysql client, awscli on remote-host
- create an example database
- use IAM to manage users and access
- configure awscli (using env)
- use script to backup database to 's3'
- how to use credentials in jenkins
- use volumes to persist data

### it also shows some shell tricks

- ctrl + r
- redirect stdout

## questions

- What is ansible?
- What is maven?
- What is DSL? Does the D is Declarative?
