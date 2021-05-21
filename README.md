# README

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :artists
- has_many :records


## artists テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| name   | string     | null: false                    |
| user   | references | null: false, foreign_key: true |


### Association

- belongs_to :user
- has_many :records


## records テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | text       |                                |
| place   | string     | null: false                    |
| day     | date       | null: false                    |
| user    | references | null: false, foreign_key: true |
| artist  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :artist