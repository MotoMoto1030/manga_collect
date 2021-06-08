# 漫画保管庫<br>

## 概要<br>
漫画を投稿、視覚的に保存する事が主な目的。

### 本番環境<br>
デプロイ先 : Heroku<br>
テストアカウント : test@com<br>
パスワード : 123456

#### 制作背景<br>
気になる漫画をメモに残す際文字だけだとどんな漫画か忘れてしまう事があった為<br>
漫画を画像付きで投稿、視覚的に保存する事で問題を解決できるのではと考えアプリを作成。

##### 詳細な説明<br>
・漫画を投稿することでマイページに投稿してきた漫画が一覧で表示。<br>
・投稿した漫画はTopページより他ユーザーも閲覧可能。<br>
・投稿した漫画から気になるものがあればいいねする事が可能。<br>
・いいねした漫画はマイページに保存される。

###### 使用技術<br>
Ruby,HTML,CSS,Github

## 今後の実装
・AWSを用いた画像アップロード<br>
・javascriptを用いたビューの編集<br>
・一つの漫画にコメントし合うコメント機能<br>
・投稿した漫画の検索機能<br>


## users テーブル

  | Column                | type   | Options                   |
  | --------------------- | ------ | ------------------------- |
  | nickname              | string | null: false               |
  | email                 | string | null: false, unique: true |
  | encrypted_password    | string | null: false               |
  | birthday              | date   | null: false               |

### Association
  has_many :comics<br>
  has_many :likes

## comics テーブル

  | Column                | type       | Options                        |
  | --------------------- | ---------- | ------------------------------ |
  | title                 | string     | null: false                    |
  | genre                 | string     | null: false                    |
  | user                  | references | null: false, foreign_key: true |
### Association
  has_many   :likes<br>
  belong_to :user

## likes テーブル

  | Column                | type       | Options                            |
  | --------------------- | ---------- | ---------------------------------- |
  | user                  | references | null: false, foreign_key: true     |
  | comic                 | references | null: false, foreign_key: true     |

### Association
  belong_to :user<br>
  belong_to :comic
