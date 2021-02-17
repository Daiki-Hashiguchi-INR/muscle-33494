# 💪 THE FIRST MUSCLE（NEW MUSCLE)
### 筋トレ初心者ユーザーに向けた、トレーニングへのきっかけ作りに特化したアプリケーション

# 💭 アプリケーション概要

### 近年、筋肉トレーニングの需要が高まっているという。
### トレーニング未経験にも始めるきっかけを与えることが目的である。

各ユーザーが行っているトレーニング（特に自宅で誰でもできるものが望ましい）を投稿、共有して様々な意見を見れるアプリケーション。カテゴリー検索により（簡単なもの）で部位を選択するだけで、誰でも始めやすいトレーニングを知ることができる。

# 🌐 URL
### https://muscle-33494.herokuapp.com/

# 👥 テスト用アカウント
### 新規投稿用ユーザー
- email: kon@kon
- password: konkon

### 新規閲覧用ユーザー
- email: 
- password: 

# 🖥 利用方法
- トップページより、初めての方はこちらを選択後、各種説明を読んでもらう。
- 新規ユーザー登録をする。
- 何かトレーニングを思いついた or トレーニングを実行したら投稿ページより投稿する。
- 新規投稿に対して、もし何かコメント（例えば、こんな風なやり方もある・自分は少しアレンジを加えた等）があれば、投稿記事の詳細ページ下のコメント欄へ投稿をする。
- 投稿記事を編集・削除する際は、詳細ページ内の編集する・削除するボタンより行う。
- ユーザー詳細画面にて、各ユーザーごとの投稿したトレーニング、お気に入り、カレンダーを確認することができる。カレンダーには自分の投稿したトレーニングを作成した際の日時にリンクしている。自分がいつトレーニングをしたのか・するのかを人目で分かるようにしている。
- 投稿された記事を調べる際に、部位と難易度を選択して検索をすることができる。

# ✅ 目指した課題解決
| ユーザーから考えられる課題 | 課題解決                       |
| ---------------------- | ---------------------------- |
| トレーニングをどれから始めれば良いかわからない | 始め方についてのページを作成することで使い方・どうやって始めるのがおすすめなのか分かるようにする |
| トレーニングにも種類がたくさんあり、自分が鍛えたい所のトレーニングが知りたい | カテゴリー検索機能によってその部位・難易度を選んで検索をかけられるようにする |
| トレーニングを投稿してみたいが、投稿内容に自信がない | コメント機能を実装することで、もし何かあったらフィードバックを貰えるようにする |
| 体重を減らしたいけどどれくらい減らせば一般的か分からない | 参考としてBMI測定機能を作成する |
| みんながやってるトレーニングが知りたい | いいね機能の実装、トレーニング表示方法を良いね順にすることで分かるようにする |
| 継続して続けていくためのモチベーションを維持させたい | カレンダー機能によって自分が投稿した内容を人目で見ることができるため、足跡として見れるようにする |

# 📦 実装機能一覧
| 機能                    | 概要                       |
| ---------------------- | ---------------------------- |
| ユーザー管理機能 | 新規登録・ログイン・ログアウトが可能 |
| 投稿機能 | 画像付きでトレーニング方法の投稿が可能 |
| 投稿詳細表示機能 | 各投稿詳細が詳細ページで閲覧可能 |
| 投稿編集・削除機能 | 投稿者本人のみ投稿編集・削除が可能 |
| ユーザー詳細表示機能 | 各ユーザーのプロフィール・投稿一覧が閲覧可能 |
| ユーザー詳細編集機能 | 各ユーザーのプロフィールの編集可能 |
| カレンダー機能 | 各ユーザーごとに、詳細ページにて投稿時に設定した日付をもとにカレンダー内に表示 |
| BMI測定機能 | 誰でも体重・身長を入力することでBMIを調べることが可能（非同期） |
| カテゴリー検索機能 | 部位・難易度を選択することで対応したトレーニングを見つけることが可能 |
| いいね機能 | 各投稿にいいねをつけることが可能 同じように削除も可能 |
| コメント機能 | 投稿詳細ページから非同期通信でコメント可能 |

## 📅 カレンダー機能

## 📋 BMI測定機能

## 🔍 カテゴリー検索機能

## 👍 いいね機能

## 📝 コメント機能

# 🔨 実装予定の機能
- カレンダーにスタンプの実装
- プロフィール画像を投稿者名の横に配置

# 📌 ローカルでの動作方法

# ⚙ 開発環境

- VScode
- Ruby 2.6.5
- Rails 6.0.0
- mysql2 0.4.4
- Javascript
- heroku
- AWS S3


# DB設計（ER図）
![muscle_ER](https://user-images.githubusercontent.com/75335352/107596224-64448280-6c5a-11eb-918e-fc05a60458ea.png)


# DB設計

## usersテーブル

| Column             | Type   | Options      |
| ------------------ | ------ | -----------  |
| nickname           | string | null: false  |
| email              | string | null: false  |
| encrypted_password | string | null: false  |
| profile            | string | null: false  |
| goal               | string | null: false  |

### Association

- has_many :muscles
- has_many :messages
- has_many :favorites
- has_many :favorite_muscles, though: :favorites, source: :muscle

## musclesテーブル

| Column              | Type       | Options     |
| ------------------- | ---------- | ----------- |
| title               | string     | null: false |
| explain             | text       | null: false |
| part_id             | integer    | null: false |
| difficult_id        | integer    | null: false |
| daytime             | datetime   | null: false |
| user                | references | foreign_key: true |

### Association

- belongs_to :user
- has_many :messages
- has_many :favorites

- has_one_attached :image

- belongs_to_active_hash :part
- belongs_to_active_hash :difficult

## messagesテーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| text     | text       | null: false |
| user     | references | foreign_key: true |
| muscle   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :muscle

## favoritesテーブル

| Column   | Type       | Options           |
| -------- | ---------- | ----------------- |
| user     | references | foreign_key: true |
| muscle   | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :muscle