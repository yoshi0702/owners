# Owners

## サイト概要
資金を求める事業者へ、事業を応援する出資者からの資金を届けるサイト


### サイトテーマ
事業継続が困難な事業者に出資者が出資することでリスクなくお店を守る


### テーマを選んだ理由
コロナウイルスの影響により事業存続が厳しい状況の店がたくさん出ています。  
国から営業停止を余儀なくされ、挙げ句の果ては救済措置は国からお金を借りるだけ。
そんな厳しい状況を乗り越えるため、リスクなく資金調達できる方法はないかと思い
このテーマを選びました。


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



## 使用技術

### フロントエンド
・HTML/CSS  
・JavaScript/jQuery  

### サーバーサイド
・Ruby-2.5.7  
・Ruby_on_rails-5.2.4.2  

### その他
・開発環境（vagrant,virtual_box）  
・本番環境・デプロイ（AWS EC2 RDS Route53,capistrano,Nginx,mysql）  
・画像アップロード（refile/AWS S3）  

## 主な機能一覧
https://docs.google.com/spreadsheets/d/1myLGtIT-6HC8Q6JbLdiu-K8rOvSSGpyIVK_mLLar5NA/edit#gid=0

### 管理者機能
・プロジェクト一覧  
・ポイント購入履歴一覧・ステータス変更機能  

### 事業者機能
・ユーザー認証(deviseを使用)  
・プロフィール画像の投稿(refileを使用)  
・ユーザー一覧、検索機能  

### 支援者機能
・ユーザー認証(deviseを使用)  
・お気に入り機能  
・ポイント購入機能  
・ポイント支払い機能  
・地域検索機能  

### プロジェクト投稿機能
・プロジェクトを書いて投稿することができる  
・プロジェクトに対してお気に入りすることができる(非同期通信)  
・支援者はプロジェクトに対してポイントを支払うことができる  





