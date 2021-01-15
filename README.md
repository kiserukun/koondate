# アプリケーション名:KONDATE	
# アプリケーション概要:決められたメニューの中から一週間の献立を決めることができます。
# URL：https://koondate.herokuapp.com
# テスト用アカウント：テストユーザーを使用することができます。
# 利用方法：「ログイン」は登録したことがあれば、登録したユーザーで入ることができます。「新規登録」は新しくユーザーを登録することができます。「テストユーザー」はお試し投稿ができます。「ログイン」「新規登録」「テストユーザー」のどれかを選択しないと投稿はできません。次に「投稿する」ボタンから投稿ページ遷移します。「曜日のメニューを選択する」からその曜日のメニューを選択します。右の「レシピ記入蘭」には手料理の場合のレシピやメニューの補足事項を書きます。「SEND」ボタンを押します。一週間のメニューが表示されます。ユーザーの名前を押すとそのユーザーが投稿したメニューを見ることができます。登録したユーザーだけ投稿を編集と削除することができます。テストユーザー は編集、削除はできません。「マイページ」で自分が投稿したメニューの一覧を見ることができます。「ログアウト」でユーザー出ることができます。
# 目指した課題解決：一週間何を食べるか決めることがめんどくさいと思っている人の課題を解決するアプリです。
# 実装した機能についての説明：ユーザーを登録する機能があります。ログイン、ログアウトができます。ユーザーを新規登録することができます。投稿するから選択形式でメニューを選択できます。マイページがあります。
# 実装予定の機能：レシピ項目に画像を張れるようにしたいです。
# データベース設計:ER.dioに記載しています。


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
