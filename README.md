# アプリ名
ファッションシェアリング

# アプリURL
https://fashion-sharing.herokuapp.com/

# 概要
ファッションを共有するWebサイトです。

# 本番環境
heroku

# 制作背景
ファッションが苦手な人が色々な人のファッションを閲覧して気に入ったファッションのページに行き、
購入先のURLが貼られていれば、そのサイトに飛ぶことができます。
また、投稿者はアフィリエイトリンクを貼ることも可能です。

# 開発環境
Ruby,RubyonRails,mysql

# 工夫した点
プロフィール画像の設定ができるようにしました

# DEMO
![25c0b2e00ca0f3bb70dbbaafe2d3cdc3](https://user-images.githubusercontent.com/72792963/107877484-23759380-6f10-11eb-92d5-42bb74e2688a.gif)


# テーブル設計

## user テーブル

| Column   | Type   | Option      |
| -------- | ------ | ----------- |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :posts
- has_many :comments
- has_many :likes

## post テーブル

| Column        | Type       | Option                         |
| ------------- | ---------- | ------------------------------ |
| title         | string     | null: false                    |
| explanation   | text       | null: false                    |
| parchase      | text       |                                |
| clothes_price | integer    |                                |
| user          | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :comments
- has_many :likes

## comment テーブル

| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| text   | text       |                                |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post

## post_like テーブル

| Column | Type       | Option                         |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| post   | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- belongs_to :post
