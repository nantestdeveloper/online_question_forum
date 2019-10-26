# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version
    2.5.1

To start the application  on local system below are the steps:
1]Go to the code directory
2]Set rvm required (2.5.1) or install if not installed
3]Run "bundle" command
4]Set mysql username and password in database.yml file with you database details
  username: 
  password: 
  5]Run below
    rails db:create
    rails db:migrate
    rails db:seed
  6] Start the rails server
      Run 
      rails s
  7] Type in browser
       http://localhost:3000



    Feature List in Online Forum:
    1]User can register/Login to site.
    2]Registered User can Add the question in forum.
    3]Registered user can add comments on question.
    4]Any user can view the Questions and Comment 