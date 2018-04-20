== README

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



## usersテーブル

|Column|Type|Options|
|------|--------------|-------|
|user_id|integer|null: false, foreign_key: true|
|name|string||
|email|string|index: true, null: false|
|company|string||
|position|string||
|profile|string||
|icon|text||

### Association
- has_many :messages

##folowersテーブル
|Column|Type|Options|
|------|--------------|-------|
|user_id|integer|null: false, foreign_key: true|

##articleテーブル
|Column|Type|Options|
|------|--------------|-------|



## messagesテーブル
|Column|Type|Options|
|------|---------------|-------|
|user_id|integer|null: false, foreign_key: true|
|body|text||

##favoriteテーブル

##categoriesテーブル

