# README

This README would normally document whatever steps are necessary to get the
application up and running.
Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
* rails new 実行
* config修正　CSS javascript Helper 自動作成不可
* webpacker 5.4.3 に変更
* bundle exec webpacker install とcompile実行
* rails db:create 実行
* users controller作成
* config修正
* database.yml コメントアウト
* migration CreateUsers 作成　configの中身にエラーがあったので元に戻す
* users new viewfile 作成
* users/showファイル作成
* sessions コントローラー作成
* sessionsコントローラー中身作成
* sessionsView 作成
* sessions new view file 作成
* configu 追加・修正
* model編集email小文字処理追加
* models編集名前email入力文字数制限パスワードの長さ制限
* Gemfile修正 bcrypt バグ修正機能追加"
* ApplicationControllerコード記述
* sessions_helper作成
* initializer 配下にlocale.rbを作成
* バリデーションエラーメッセージ日本語化
* model.ja.yml作成
* user new 画面作成
* userカラム名img →imageへ
* schrmaファイル変更
* imagemagick  インストール
* Gemfile Carreiewave mini_magick インストール
* user model uploader紐付け