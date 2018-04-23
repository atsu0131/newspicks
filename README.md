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
|name|string|null: false, foreign_key: true|
|email|string|index: true, null: false|
|company|string||
|position|string||
|profile|string||
|icon|text||

### Association
- has_many :messages
- has_many :followers
- has_many :favorites
- has_many :articles

## followersテーブル
|Column|Type|Options|
|------|--------------|------------|
|user_id|integer|null: false, foreign_key: true|
|name|string|null: false, foreign_key: true|

### Association
- belongs_to :user

## articleテーブル
|Column|Type|Options|
|------|--------------|------------|
|user_id|integer|null: false, foreign_key: true|
|article|text|index: true|

### Association
- belongs_to :user
- belongs_to :caregory

## messagesテーブル
|Column|Type|Options|
|------|---------------|-----------|
|user_id|integer|null: false, foreign_key: true|
|body|text||

### Association
- belongs_to :user
- belongs_to :article

## favoritesテーブル
|Column|Type|Options|
|------|---------------|-----------|
|user_id|integer|null: false, foreign_key: true|
|favorites|integer|index: true|

### Association
- belongs_to :user
- has_many :articles

## categoriesテーブル
|Column|Type|Options|
|------|---------------|-----------|
|user_id|integer|null: false, foreign_key: true|
|categories|integer|index: true|

### Association
- has_many :articles

