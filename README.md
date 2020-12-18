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
