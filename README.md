# DB 設計

## users table

| Column             | Type        | Options                        |
|--------------------|-------------|--------------------------------|
| employee_number    | string      | null: false, unique: true      |
| encrypted_password | string      | null: false                    |
| first_name_kanji   | string      | null: false                    |
| last_name_kanji    | string      | null: false                    |
| first_name_kana    | string      | null: false                    |
| last_name_kana     | string      | null: false                    |
| boss_password      | string      | null: false                    |

### Association
- has_many :projects
- has_many :tasks
- has_many :todos



## projects table

| Column            | Type         | Options                        |
|-------------------|--------------|--------------------------------|
| user              | references   | null: false, foreign_key: true |
| project_title     | string       | null: false                    |
| project_detail    | text         | null: false                    |
| start_date        | date         | null: false                    |
| end_date          | date         | null: false                    |

### Association
- has_many :tasks
- belongs_to :user



## tasks table

| Column            | Type         | Options                        |
|-------------------|--------------|--------------------------------|
| user              | references   | null: false, foreign_key: true |
| project           | references   | null: false, foreign_key: true |
| task_title        | string       | null: false                    |
| task_detail       | text         | null: false                    |
| status            | integer      | null: false                    |

### Association
- has_many :todos
- belongs_to :user



## todos table

| Column           | Type          | Options                         |
|------------------|---------------|---------------------------------|
| content          | string        | null: false                     |
| priority_id      | integer       |                                 |
| important_id     | integer       |                                 |

### Association

- belongs_to :user
- belongs_to :task