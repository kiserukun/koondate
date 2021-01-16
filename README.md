#アプリケーション名:KONDATE 
#アプリケーション概要:決められたメニューの中から一週間の献立を決めることができます。
#URL：https://koondate.herokuapp.com
#テスト用アカウント：テストユーザーを使用することができます。
#利用方法：「ログイン」は登録したことがあれば、登録したユーザーで入ることができます。「新規登録」は新しくユーザーを登録することができます。「テストユーザー」はお試し投稿ができます。「ログイン」「新規登録」「テストユーザー」のどれかを選択しないと投稿はできません。次に「投稿する」ボタンから投稿ページ遷移します。「曜日のメニューを選択する」からその曜日のメニューを選択します。右の「レシピ記入蘭」には手料理の場合のレシピやメニューの補足事項を書きます。「SEND」ボタンを押します。一週間のメニューが表示されます。ユーザーの名前を押すとそのユーザーが投稿したメニューを見ることができます。登録したユーザーだけ投稿を編集と削除することができます。テストユーザー は編集、削除はできません。「マイページ」で自分が投稿したメニューの一覧を見ることができます。「ログアウト」でユーザー出ることができます。
#目指した課題解決：一週間何を食べるか決めることがめんどくさいと思っている人の課題を解決するアプリです。
#実装した機能についての説明：ユーザーを登録する機能があります。ログイン、ログアウトができます。ユーザーを新規登録することができます。投稿するから選択形式でメニューを選択できます。マイページがあります。
#実装予定の機能：レシピ項目に画像を張れるようにしたいです。
#データベース設計:ER.dioに記載しています。

#以下は投稿の動画です。
#https://i.gyazo.com/fdffaf3ebda413417031dbcec12dbf1a.gif
#https://i.gyazo.com/4b50d6475c83518741040ddcb2bbeb6f.gif
概要

http://litas.herokuapp.com/

自分のリストをつくって公開することができます。
今日やること、毎日がんばっていること、行きたいカフェ、または好きな映画……。リストを作ったらカードを追加してリストを完成させましょう。
誰かのユニークなリストを見つけたらいいねを忘れずに！

テストアカウント

こちらをご使用ください
（こちらのメールアドレスはGOOGLEログインには非対応です）。

メールアドレス
test@test.com

パスワード
test0000

作成期間

2020/04/02 Laravel学習開始
2020/04/19 本リポジトリ作成
2020/05/02 各機能実装完了後、デプロイ
バージョンアップを継続
仕様

macOS Mojava 10.14.5
PHP 7.1.23
Laravel Framework 6.18.6
Bootstrap 4
Vue.js 2.6.11
Postgresql
Docker
Heroku
Google API
おもな機能

ユーザー

ユーザー登録、ログイン、ログアウト
ユーザーは同じ名前で登録できない
Googleアカウントのメールアドレスを利用したユーザー登録、ログイン
SendGridを利用したメールによるパスワードの再設定
リスト

作成、リスト名とタグの編集、削除
タグはハッシュタグ風に表示され、3つまで付加することができる
タグの入力時、すでに存在しているタグはフォームに自動補完される
タグをクリックすることで、同じタグの付けられたリストを一覧で表示する
いいね機能。一般的な仕様と同じ。自分のリストにもいいねできる
自分の作っていないリストは作成者名が表示される
カード

作成、編集、削除
詳細コメントは無しでも投稿することができる
カードをクリックすることで自分に書いた詳細を見ることができる
レスポンシブデザイン

スマホサイズになると、リストが1列表示に変化する
スマホサイズになると、右上の『リストをつくる』がアイコンに変わる
ロゴ

自身でデザインしてIllustratorで作成
ナビバー、ユーザー登録、ログイン画面、本ページに実装
faviconにもデザインしたアイコンを実装
今後実装したいこと

いいねの通知
Twitterアカウントでのログイン
カードを並び替えすることができる
フォロー機能
ドラッグドロップにてカードを並び替える機能を考えています。まだ学習していない内容ですが、現状では正直使いにくいため必ず実装したいと考えています。

フォロー機能は敢えて実装予定がありませんでしたが、ユーザーが増えるに従って目的の人のリストを探しにくくなることを考えると実装もすべきかもしれないと考えています。
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
