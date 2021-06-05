# 漫画保管庫<br>

## 概要<br>
漫画を投稿、視覚的に保存する事が主な目的。

### 本番環境<br>
デプロイ先予定 : Heroku<br>
テストアカウント : test@com<br>
パスワード : 123456

#### 制作背景<br>
気になる漫画をメモに残す際文字だけだとどんな漫画か忘れてしまう事があった為<br>
漫画を画像付きで投稿、視覚的に保存する事で問題を解決できるのではと考えアプリを作成。


## users テーブル

  | Column                | type   | Options                   |
  | --------------------- | ------ | ------------------------- |
  | nickname              | string | null: false               |
  | email                 | string | null: false, unique: true |
  | encrypted_password    | string | null: false               |
  | birthday              | date   | null: false               |

### Association
  has_many :comments<br>
  has_many :comics

## comics テーブル

  | Column                | type       | Options                        |
  | --------------------- | ---------- | ------------------------------ |
  | title                 | string     | null: false                    |
  | genre                 | string     | null: false                    |
  | user                  | references | null: false, foreign_key: true |
### Association
  has_many   :comments<br>
  belong_to :user

## likes テーブル

  | Column                | type       | Options                            |
  | --------------------- | ---------- | ---------------------------------- |
  | user                  | references | null: false, foreign_key: true     |
  | comic                 | references | null: false, foreign_key: true     |

### Association
  belong_to :user<br>
  belong_to :comic
