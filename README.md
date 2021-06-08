# README

# アプリケーション名
No LIVE , No LIFE

# アプリケーション概要
アーティストのライブに行くのが趣味の人に向けたアプリ
フェスやライブで観たアーティストをログとして記録していく
ログを増やし内容を充実させていくことで自分専用のライブ記録として使用する事ができる

# URL
https://nolive-nolife.herokuapp.com/

# 利用方法
ユーザー登録をする（ニックネーム、メール、パスワード）
ログインしたらアーティストを追加する事ができる
アーティストをクリックするとログを追加できる

# 目指した課題解決
いつ、どこで観たのかを記録することでログを増やしていく
アーティスト毎のログを見る事ができる
全体のログを見る事ができる

# 実装予定の機能
- ユーザー登録機能
- アーティスト追加機能
- ログ投稿機能
- ログ閲覧機能
- 経過日数表示
- カレンダー表示



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
| comment | text       |                                |
| place   | string     | null: false                    |
| day     | date       | null: false                    |
| user    | references | null: false, foreign_key: true |
| artist  | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :artist
