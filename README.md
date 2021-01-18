# KONDATE

![logo-2](https://user-images.githubusercontent.com/73691576/104814693-b6f56f00-5853-11eb-8ff2-3e54fd372f56.png)

# 概要

https://koondate.herokuapp.com

仕事終わりに今晩何食べよう？それより昨日何食べたっけ・・・？  
やりたいことあるのに、晩ご飯決めるのめんどくさい！
という経験はありませんか？
このアプリ使えばそんな悩みを解決できます！


# 企画背景
「今晩何食べようか？」と言われてもメニューがなかなか決まらないため、毎日晩ご飯のメニューを考える無駄な時間がありました。  
   その為、一週間のメニューをまとめて決めておけばいいと考え本アプリを作成しました。
   また、誰かのメニューを参考にすることで、自分の食生活の改善につながるのでは無いかと考えています。

# テストアカウント

- テストユーザーをご使用ください

# 作成期間

- 2021/01/03 作成開始
- 2020/01/15 各機能実装完了後、デプロイ
- バージョンアップを継続

# 仕様

- macOS Catalina 10.15.7
- Ruby '2.6.5'
- Rails  '6.0.0'
- Heroku

# 主な機能

## ユーザー

- ユーザー登録、ログイン、ログアウト
- ユーザーは同じメールで登録できない

## 投稿する

- メニューをプルダウン式の中から選択できます
- 同じユーザーは自分の投稿を編集、削除できます
- 右のテキスト欄は手料理する際にレシピを記入したり補足事項を書く欄です

**トップページ**
<img width="1328" alt="スクリーンショット 2021-01-17 9 22 04" src="https://user-images.githubusercontent.com/73691576/104827842-b2f23d00-58a5-11eb-83ad-bf886997c9d3.png">

**投稿ページ**
<img width="1328" alt="スクリーンショット 2021-01-17 9 19 25" src="https://user-images.githubusercontent.com/73691576/104827839-b1c11000-58a5-11eb-8168-e103a26334e8.png">

**投稿後**
<img width="1328" alt="スクリーンショット 2021-01-17 9 19 52" src="https://user-images.githubusercontent.com/73691576/104827840-b259a680-58a5-11eb-9e03-95a1de5f36ab.png">

# 今後実装したいこと

- メニュー欄の充実とデザイン
- レスポンシブデザイン
- いいね、お気に入り、コメント機能


# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association
- has_many :menus


## menus テーブル

| Column          | Type     | Options     |
| -------------   | ------   | ----------- |
| sokuseki_id     | integer  | null: false |
| sokuseki_mon_id | integer  | null: false |
| sokuseki_tue_id | integer  | null: false |
| sokuseki_wed_id | integer  | null: false |
| sokuseki_thu_id | integer  | null: false |
| sokuseki_fri_id | integer  | null: false |
| sokuseki_sat_id | integer  | null: false |
| sun_making      | text     |
| mon_making      | text     |
| tue_making      | text     |
| wed_making      | text     |
| fri_making      | text     |
| sat_making      | text     |
| user_id         | integer  | foreign_key: true  | 

### Association

  belongs_to :sokuseki
  belongs_to :sokuseki_mon
  belongs_to :sokuseki_tue
  belongs_to :sokuseki_wed
  belongs_to :sokuseki_thu
  belongs_to :sokuseki_fri
  belongs_to :sokuseki_sat
  belongs_to :user
