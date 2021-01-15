# README
# アプリケーション名:KONDATE	
# アプリケーション概要:簡易メニューから一週間の献立を決めることができます。
# URL	デプロイ済みのURLを記述しましょう。デプロイが済んでいない場合は、デプロイ次第記述しましょう。
# テスト用アカウント：テストユーザーを使用することができます。
# 利用方法：「投稿する」ボタンから投稿ページ遷移します。「曜日のメニューを選択する」からその曜日のメニューを選択します。右の「レシピ記入蘭」には手料理の場合のレシピやメニューの補足事項を書きます。「SEND」ボタンををします。一週間のメニューが表示されます。ユーザーの名前を押すとそのユーザーが投稿したメニューを見ることができます。登録したユーザーだけ投稿を編集と削除することができます。
# 目指した課題解決：一週間何を食べるか決めることがめんどくさいと思っている人の課題を解決するアプリです。
# 実装した機能についての説明：ユーザーを登録する機能があります。選択形式でメニューを選択できます。
# 実装予定の機能：レシピ項目に画像を張れるようにしたいです。
# データベース設計:ER図があります。


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