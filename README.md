# README

This README would normally document whatever steps are necessary to get the
application up and running.

* Database creation
  rake db:setup
  rake db:migrate
  
* Setup Mailer
  export DEFAULT=""
  export SEND_MAIL_TO="info@ajackus.com"
  export GMAIL_USERNAME=""  #your gmail username
  export GMAIL_PASSWORD=""  #your gmail password
  Please refer and enable this: https://myaccount.google.com/lesssecureapps

* For multi language Support
  add params eg. www.domain.com/?locale=pt

* How to run the test suite
  bundle exec rspec
