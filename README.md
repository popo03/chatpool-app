## アプリケーション名
CHATPOOL-APP
***
<br>

## アプリケーション概要
複数人でも使える、簡単チャットアプリ。
***
<br>

## URL
https://chatpool-app-35693.herokuapp.com/
***
<br>

## Basic認証
#### ID : chatpool-app
#### PASSWORD : 35693
***
<br>

## テスト用アカウント
#### 名前 : you
#### PASSWORD : test1234
<br>

#### 名前 : test1
#### PASSWORD : qqq111
<br>

#### 名前 : test3
#### PASSWORD : eee333
***
<br>

## 利用方法
#### 1. 新規登録に必要事項を記載する。
<br>

#### 2. 画面左上にある「要件を作成する」をクリックする。
<br>

#### 3. 要件を記載し話し合うユーザーを選択する。（自身も選択すること）
<br>

#### 4. サイドバーに要件が表示されたら、サイドバーの要件をクリックする。
<br>

#### 5. 画面下のコメント欄にコメントを書き込んで送信する。
<br>

#### 6. 話し合いが済んだら削除ボタンを押す。
***
<br>
<br>

## 目指した課題解決
#### 福祉施設において、PHSで連絡しても繋がらない、直接会いに行くも見つからないということが多く、コミュニケーションを取るのに効率が悪い。さらに、特別養護老人ホームで働く人の平均年齢は45歳で70％が女性である為、機械に強いとは言い難く、簡単に行えるアプリケーションが望ましいと考える。
***
<br>

## 洗い出した要件
#### 1. ユーザー管理機能
新規ユーザーの登録、名前やポジションに変更があった時には編集画面で変更を行う。
<br>

#### 2. 新規要件の作成機能
各専門職に要件を伝えたい際、新しい要件を作成し、情報を共有する。
<br>

#### 3. グループ機能
複数人にコメントする際、コメントを伝えたいユーザーを選択するのに使用する。
<br>

#### 4. コメント機能
要件に対し、各専門職と話し合う際に使用する。
<br>

#### 5. 削除機能
済んだ要件をそのまま残しておくと済んだ要件か済んでいない要件かわからなくなる為、要件済みは削除する。
***
<br>

## 実装した機能についての画像やGIFおよびその説明
 [![Image from Gyazo](https://i.gyazo.com/6ac7232fa85447a22c35295e8dda1002.gif)](https://gyazo.com/6ac7232fa85447a22c35295e8dda1002)

<br>

自分を含めた他のユーザーを複数人選択すると、新規要件として画面に表示させることが出来る。
***
<br>

## 実装予定の機能
#### 1. 要件に新たなコメントがされた際、分かりやすくする機能。
***
<br>
<br>

## テーブル設計

### users テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| name     | string     | null: false                    |
| position | integer    | null: false                    |
| email    | string     | null: false                    |
| password | string     | null: false                    |

<br>

### Association

- has_many : rooms
- has_many : user_groups
- has_many : groups, through: user_groups

<br>

### rooms テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| text   | text       | null: false                    |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

<br>

### Association

- belongs_to :user
- belongs_to :group

<br>

### groups テーブル

| Column     | Type    | Options     |
| ---------- | ------- | ----------- |
| group_name | string  | null: false |

<br>

### Association

- has_many : rooms
- has_many : user_groups
- has_many : users, through: user_groups

<br>

### user_groups テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| group  | references | null: false, foreign_key: true |

<br>

### Association
- belongs_to :user
- belongs_to :group

<br>

[![Image from Gyazo](https://i.gyazo.com/87d2f59d8d175e21af72dd4b7349aa4a.gif)](https://gyazo.com/87d2f59d8d175e21af72dd4b7349aa4a)
***
<br>

## ローカルでの動作方法
#### 1. ターミナル内で % git clone https://github.com/popo03/chatpool-app.git を入力し、リモートリポジトリをクローンする。

<br>

#### 2. % cd chatpool-app でchatpool-appディレクトリに移動する。

<br>

#### 3. .gitを確認するためにchatpool-appディレクトリ内で % ls -a | group .git を入力する。

<br>

#### 4. .gitが確認できたら % rm -rf .git で.gitを削除する。

<br>

#### 5. % git init でアプリケーションを自身のリポジトリに再掲する。

<br>

#### 6. % bundle install でgemをインストールする。

<br>

#### 7. % rails db:create 後に % rails db:migrate でデータベースを作成する。

<br>

#### 8. % rails s でローカル環境でアプリケーションが表示されるか確認する。

<br>

#### 9. Rubyのバージョン ruby 2.6.5p114

<br>

#### 10. Railsのバージョン Rails 6.0.3.7

<br>

#### 11. Gemのバージョン 3.0.3

<br>

#### 12. GitHubのバージョン git version 2.30.1 (Apple Git-130)

<br>

#### 13. Herokuのバージョン heroku/7.54.1 darwin-x64 node-v12.21.0
***