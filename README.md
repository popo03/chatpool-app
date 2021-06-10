# テーブル設計

## companies テーブル

| Column              | Type   | Options     |
| ------------------- | ------ | ----------- |
| company_name        | string | null: false |
| representative_name | string | null: false |
| call_number         | string | null: false |
| address             | string | null: false |
| email               | string | null: false |

### Association

- has_many :users


## users テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| position | integer    | null: false                    |
| password | string     | null: false                    |
| company  | references | null: false, foreign_key: true |

### Association

- belongs_to :company
- has_many : user_rooms
- has_many : rooms, through: user_rooms
- has_many : user_groups
- has_many : groups, through: user_groups


## rooms テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| group  | references | null: false, foreign_key: true |

### Association

- has_many :user_rooms
- has_many :users, through: user_rooms
- has_many :groups


## groups テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| group_name | string  | null: false |
| category   | integer | null: false |
| text       | text    | null: false |

### Association

- belongs_to :room
- has_many : user_groups
- has_many : users, through: user_groups


## user_rooms テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :room


## user_groups テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

### Association
belongs_to :user
belongs_to :group
