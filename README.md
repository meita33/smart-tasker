# DB 設計

## users table

| Column             | Type        | Options                        |
|--------------------|-------------|--------------------------------|
| employee_number    | string      | null: false                    |
| encrypted_password | string      | null: false                    |
| first_name_kanji   | string      | null: false                    |
| last_name_kanji    | string      | null: false                    |
| first_name_kana    | string      | null: false                    |
| last_name_kana     | string      | null: false                    |
| boss_password      | string      | null: false                    |

### Association
- belongs_to :task
- has_many :todos



## tasks table

| Column            | Type         | Options                        |
|-------------------|--------------|--------------------------------|
| user              | references   | null: false, foreign_key: true |
| title             | string       | null: false                    |
| category_id       | integer      | null: false                    |
| department_id     | integer      | null: false                    |
| group_id          | integer      | null: false                    |
| detail            | text         | null: false                    |

### Association
- has_many :todos
- has_many :users



## Projects table

| Column           | Type          | Options                         |
|------------------|---------------|---------------------------------|
| user             | references    | null: false, foreign_key: true  |
| task             | references    | null: false, foreign_key: true  |

### Association

- 



## todos table

| Column           | Type          | Options                         |
|------------------|---------------|---------------------------------|
| kinds_id         | integer       | null: false                     |
| important_id     | integer       | null: false                     |
| time_detail      | string        |                                 |
| detail           | text          | null: false                     |

### Association

- belongs_to :user
- belongs_to :task