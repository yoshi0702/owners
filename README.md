# Owners

## サイト概要
資金を求める事業者へ、事業を応援する出資者からの資金を届けるサイト


### サイトテーマ
事業者と出資者たち皆でお店を守る


### テーマを選んだ理由
コロナウイルスの影響により事業存続が厳しい状況の店がたくさん出ています。
そんな方々のために少しでも出来ることはないかと思いこのテーマを選びました。


### ターゲットユーザ
・コロナウイルスの影響で経営が厳しい事業者 
・身近なお店を守りたい出資者 

### 主な利用シーン
事業存続を考える事業者の資金調達 



## 要件定義書
https://docs.google.com/document/d/1bqiHd1JsZqYzliFzf4IKf1eZmYQqKJEiOThYO4tv1R8/edit


## ER図
https://app.diagrams.net/#G1a46fVSOKFrhjandn-JDFUl3AHUeDdpaF


## テーブル定義書
https://docs.google.com/spreadsheets/d/1k_H6Zi0MowlwlX1i90iiYXCYclNRwL_apE_9o5OIiuc/edit#gid=37175578


## アプリケーション詳細設計書
https://docs.google.com/spreadsheets/d/1LXvBgy7WqnIXAV_yXLL4SPd3nxGcX1TARv3rKsjJi3Q/edit#gid=0



##使用技術

###フロントエンド 
・HTML/CSS 
・JavaScript/jQuery 

###サーバーサイド 
・Ruby-2.5.7 
・Ruby_on_rails-5.2.4.2 

###テスト
・RSpec(model/request/feature) 

###その他 
・開発環境（vagrant,virtual_box） 
・本番環境・デプロイ（AWS EC2 RDS Route53,capistrano,Nginx,mysql） 
・画像アップロード（refile/AWS S3） 
・SSL認証、HTTPS 

##主な機能一覧
https://docs.google.com/spreadsheets/d/1h24w8r3UtuNiOmxoTCwX2VrwMMeWtOm4KoNjUMxbg9A/edit#gid=0

###管理者機能
・アクティビティをチェックできるダッシュボード（グラフにchartkickを使用） 
・会員の一覧、検索、論理削除機能（論理削除にparanoiaを使用） 
・会員一覧のcsvエクスポート機能 
・記事一覧、検索、削除機能 
・記事に対してのコメント削除機能 

###ユーザー機能
・ユーザー認証(deviseを使用) 
・ユーザ登録時、Welcomeメールが届く(ActionMailer) 
・パスワードリセットメールが届く(ActionMailer) 
・facebookアカウントでのログイン(omniauth使用) 
・googleアカウントでのログイン(omniauth使用) 
・プロフィール画像の投稿(refileを使用) 
・画像プレビュー 
・フォロー、フォロワー機能 
・フォロワー数のランキング形式でおすすめユーザーの表示 
・ユーザー一覧、検索機能 
・カレンダーで作品を見た日付を確認できる(simple_calendarを使用) 
・円グラフで自分が見たジャンルの割合を確認できる(chartkickを使用) 

###通知機能
・フォローされると通知が出る 
・投稿した記事に対してコメント、いいねをもらうと通知が出る 
・通知が１件以上ある場合、通知欄にマークが出る 

###記事投稿機能
・おすすめ作品の記事を書いて投稿することができる 
・記事に対してコメントすることができる(非同期通信) 
・記事に対していいねすることができる(非同期通信) 
・ネタバレ記事は「ネタバレ」と表示される 

###マイリスト機能
・観たい、観た作品をマイリストへ投稿できる(モーダルでの投稿) 
・レビューすることができる(raty.jsを使用した評価) 
・日時での並び替え機能 

###その他
・エラーメッセージの日本語化(rails-i18n) 
・レスポンシブ対応 
・ページネーション機能(kaminariを使用) 
・毎月１日に定期メールを送信(wheneverを使用) 

