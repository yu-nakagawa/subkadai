# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
#facebook認証には、facebookのサイトで/users/auth/facebook/callbackを追加する
#modelのbelongs_toのとこにoptional:trueをつけないと、nilがある場合にsaveができない