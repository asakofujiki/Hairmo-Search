# Hairmo Search
<img src="https://user-images.githubusercontent.com/61612874/87398382-c370e480-c5f0-11ea-915b-46bfcae8ac10.png">

## サイト概要
カリキュラムやテストに協力してくれるモデルさんを探したい美容師アシスタントと無料でカットやカラーをしてもらいたい人をつなぐマッチングサイトです</br>
URL:https://hairmo-search.work/

### サイトテーマ
美容師とモデルをつなぐ空間（ばしょ）

### テーマを選んだ理由
元美容師である私が、美容師時代に苦労したことの1つがヘアモデルを探すことでした</br>
休みの日は1日中渋谷や表参道に立ち、多くの人に声を掛けては断られ、ということを繰り返していました</br>
「美容師がもっと効率よくモデルさんを探すことは出来ないか？」、「無料でカットやカラーをしたいと思っている人たちが美容師を探す手伝いが出来ないか？」と考え、自分の知識や経験を生かすことが出来ると思い、このテーマを選びました

### ターゲットユーザ
・カリキュラムやテストに協力してくれるモデルさんを探している美容師アシスタント</br>
・無料でカットやカラーをしてくれる美容師を探している人(モデルさん)

### 主な利用シーン
・美容師アシスタント：カリキュラムやテストに協力してくれるモデルさんを探したいとき</br>
・モデルさん：無料でカットやカラーをしてくれる美容師を探したいとき

## 使用技術

### 使用言語
Ruby 2.5.7</br>
Rails 5.2.4.2</br>
Javascript(jQuery)</br>

### 開発環境
Vagrant + VirtualBox

### インフラ
AWS(VPC, EC2, RDS, ALB, S3, Lambda, CloudWatch, Route53)</br>
MySQL2</br>
Nginx(Web サーバ)</br>
Capistrano

### AWS構成図
![AWS構成図](https://user-images.githubusercontent.com/61612874/87400426-c1f4eb80-c5f3-11ea-886c-14adfe16a605.png)

### その他の技術(gem 等)
pry-byebug</br>
dotenv-rails</br>
devise</br>
kaminari</br>
bootstrap3</br>
refile / refile-mini_magick</br>
enum_help</br>
I18n</br>

### ER図
![ER図](https://user-images.githubusercontent.com/61612874/87405255-2450ea80-c5fa-11ea-85c2-b0fc21b915b5.png)

### 主な機能
・ユーザー登録機能（美容師・ヘアモデル）</br>
　ログイン、ログアウト</br>
　プロフィール編集</br>
・ヘアカタ投稿機能（美容師）</br>
　新規投稿</br>
　編集、削除</br>
・いいね機能（ヘアモデル）　非同期通信</br>
・フォロー、フォロワー機能（美容師・ヘアモデル）　非同期通信</br>
・メッセージ機能（美容師・ヘアモデル）　非同期通信</br>
・通知機能（美容師・ヘアモデル）</br>
・検索機能</br>
・無限スクロール機能</br>
・住所自動入力機能</br>

### 機能一覧
https://docs.google.com/spreadsheets/d/1RTN3xSTjpRuC73SL8lVS-5wQUqAVMzosXD0OlxIHeeg/edit#gid=0
