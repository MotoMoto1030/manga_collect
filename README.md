![漫画保管庫](mangacollect-sample1.jpg)

# 漫画保管庫<br>

## 概要<br>
漫画の投稿。画像も一緒に投稿することで視覚的に投稿した漫画を理解する事が目的。

### 本番環境<br>
デプロイ先 : Heroku<br>
テストアカウント : test@com<br>
パスワード : 123456

#### 制作背景<br>
気に入った漫画をメモに残す際、文字だけだとどんな漫画か忘れてしまう事があった。<br>
漫画を画像付きで投稿することでどんな漫画だったかを視て理解することができるのではと考えアプリを作成した。

##### 詳細な説明<br>
・漫画を投稿するとマイページにて投稿してきた漫画が一覧で表示。<br>
・投稿した漫画はTopページより他ユーザーも閲覧可能。<br>
・投稿した漫画から気になるものがあればいいねする事が可能。<br>
・いいねした漫画はマイページに保存される。<br>
・投稿した漫画を検索する検索機能を実装。

###### 使用技術<br>
Ruby,HTML,CSS,Github,AWS(予定)

## 今後の実装
・AWSを用いた画像アップロード<br>
・javascriptを用いたビューの編集<br>
・一つの漫画にコメントし合うコメント機能<br>
・足りていないビューの整形


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
