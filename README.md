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
# User
| user     | type            |                    |
| -------- | --------------- | ------------------ |
| username | string          | null: false        |
| grade    | integer         |                    |
| email    | string          | null: false        |
| profile  | text            | null: false        |
| major    | integer         |                    |

# Associations
has_many: books
has_one: purchaser

# Book
| book    |           |
| ------- | ----------|
| title   |           |
| quality |           |
| price   |           |

# Associations
belongs_to: user
has_one   :purchaser

# Purchaser

| purchaser  |            |
| ---------- | ---------- |
| user       | references |
| address    | references |

# Associations
has_one : book
belongs_to :purchaser

# address 

| address  |      |
| -------- | ---- |
| town     |      |
| mailing  |      |
| building |      | 