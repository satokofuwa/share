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
* ログアウト機能追加
* user _form edit view file 作成
* user _form edit 内容作成
* users_helper 作成
* users_helper current_user参照作成
* 更新画面修正
* favorites テーブル作成
* model like 作成
* migration 中間テーブルlike作成
* ルートにLike追加
* likes編集　resources指定
* Post New画面作成
* rails g model post 実行
* rails g controller posts 実行
* post画面の作成
* post index 画面修正
* post models修正
*　エラー出力解消
*  postテーブルにインデックスと外 部キーであるuser_idを作成
*  お気に入り機能作成中
*  エラー修正<%=つけ忘れ　application cotroller 修正 model　修正
*  戻る追加
* メイラーの作成
* View comfirm.html.erb作成
* confirm_posts_mailer に名前を変えて再作成　View file
* レターオープナーのルーティングを追加
* confrim_post_mailer作成
* contactsテーブル作成
* contacts viewファイル作成メイラー作成
* post index修正
* Bootstrap 機能追加
* エラー画面作成
* エラー再生の為、config修正
* Faker 作成
* contactsテーブル不要のため削除 model contact削除
* config_consider_all_requests_local = trueに変更
* Seedデータ投入コード作成
* dotenv-rails インストール
* gitignore 作成
* post から編集画面へのredirect 作成
* I18n.config.available_locales = [:ja, :en]と変更
* model contactsファイル削除
* インデント修正　View edit.rbファイル削除
* gem dotenvが重複していたので削除bundleコマンド実行
* config/root にroot sessions#new 設定 
* .gitignoreに.envを入力 envfile作成


