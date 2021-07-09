### アプリケーション名
salonreserve-35850

## アプリケーション概要
ヘアスタイルを投稿、閲覧出来たり美容室を時間帯予約する事が出来る

# URL
https://salonreserve-35850.herokuapp.com/

# テスト用アカウント
メールアドレス：test@test.com
パスワード：test3588

# 利用方法
トップページのログインボタンからログイン後、ヘアスタイルを投稿したり、投稿されたヘアスタイルの
一覧表示から詳細表示に遷移して、そのまま予約画面へ移行する。
予約画面で◯になっている時間帯を選択すると予約決定画面になり、送信すると予約される。
マイページには予約した日時が表示される。

# 目指した課題解決
・美容室のトップページから気軽に予約やヘアスタイルの投稿が行える。
・ヘアスタイルを選択した上で予約することで美容師がお客様に施術する内容を事前に決められる。

# 洗い出した要件
①ユーザー管理機能
②美容室予約機能
③ヘアスタイル投稿機能
④レスポンシブWEBデザイン

# 実装した機能についての説明
①ログインして登録しているユーザーのみが予約したり、ヘアスタイルを投稿出来るようにする
②時間帯別に美容室が空いている時間に予約出来るようにする
③美容師が簡単にヘアスタイルを投稿出来るようにする
④パソコンだけでなくタブレットやスマホでも快適に利用出来るようにする

# 実装予定の機能
・メニューの所用時間事に予約時間帯が埋まる数を増やす機能
・在庫数を反映した商品購入機能
・Dockerの利用

# テーブル設計
## users テーブル

| Column             | Type   | Options                 |
| ------------------ | ------ | ----------------------- |
| email              | string | null false, unique: true|
| encrypted_password | string | null false              |

has_many :hairstyles
has_many :reservations

## hairstyles テーブル
| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| hairstylename | string     | null false        |
| detail        | text       | null false        |
| gender_id     | integer    | null false        |
| hairlength_id | integer    | null false        |
| haircolor_id  | integer    | null false        |
| user          | references | foreign_key: true |

belongs_to :user

## reservations テーブル
| Column        | Type       | Options           |
| ------------- | ---------- | ----------------- |
| day           | date       | null false        |
| time          | string     | null false        |
| start_time    | datetime   | null false        |
| menu_id       | integer    | null false        |
| user          | references | foreign_key: true |

belongs_to :user

# ローカルでの動作方法
% git clone <リモートリポジトリのURL>
% cd アプリケーションのディレクトリ
% bundle install
% yarn install
% rails db:create
% rails db:migrate
% rails s
## アプリケーション開発環境
ruby2.6.5
rails6.1.4
gem 'devise'
gem 'rails-i18n', '~> 6.0'
gem 'devise-i18n'
gem "simple_calendar", "~> 2.0"
gem 'mini_magick'
gem 'image_processing', '~> 1.2'
gem 'active_hash'
gem 'devise-bootstrap-views', '~> 1.0'