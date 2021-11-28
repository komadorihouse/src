# README

* Ruby version 2.7.4

* Ruby on Rails version 6.1.4.1

* Database mySQL


# Teble desin

## users

|Column              | Type   | Options                   |
|--------------------|--------|---------------------------|
|email               | string |null: false, unique: true  |
| encrypted_password | string | null: false               |
| facility_name      | string | null: false               |

### Association

- has_many :merchandise
- has_many :order

## merchandise

|Column              | Type     | Options                      |
|--------------------|----------|------------------------------|
|user                |references|null: false, foreign_key: true|
|merchandise_name    | string   |null: false                   |
|explanation         | string   |                              |
|price               | integer  |null: false                   |
|limit               | boolean  |null: false                   |
|quantity            | integer  |                              |
|deadline            | date     |                              |

### Association

- belongs_to :user
- has_many :order

## orders

|Column              | Type     | Options                      |
|--------------------|----------|------------------------------|
|user	             |references|null: false, foreign_key: true|
|merchandise         |references|null: false, foreign_key: true|
|mumber_of_orders    |integer   |null: false                   |
|price               |integer   |null: false

### Association

- belongs_to :user
- belongs_to :merchandise

 