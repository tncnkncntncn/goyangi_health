# README

# テーブル設計


## users

| Column             | Type   | Options                  |
| ------------------ | ------ | ------------------------ |
| nick_name          | string | null: false              |
| email              | string | null: false,unique :true |
| encrypted_password | string | null: false              |

- has_many:cats


## cats

| Column        | Type       | Options                        |
| ------------- | ---------- | ------------------------------ |
| name          | string     | null:false                     |
| gender        | boolean    |                                |
| type          | string     |                                |
| castration    | boolean    | null:false                     |
| cat_weight    | integer    |                                |
| birth_day     | date       |                                |
| family_day    | date       |                                |
| hospital      | string     |                                |
| user          | references | null: false, foreign_key: true |

- belongs_to:user
- has_many:records


## records

| Column      | Type       | Options                        |
| ------------| ---------- | ------------------------------ |
| start_time  | string     | null:false                     |
| condition   | boolean    |                                |
| important   | boolean    |                                |
| title       | integer    | null:false                     |
| content     | text       |                                |
| user        | references | null:false, foreign key :true  |
| cat         | references | null:false, foreign key :true  |

- belongs_to :user
- belongs_to :cat
- has_many:record_images


## record_images

| Column      | Type       | Options                         |
| ------------| ---------- | ----------------------------    |
|image        | string     | null:false                      |
|record_id    | references | null:false, foreign key :true   |

- belongs_to :record

