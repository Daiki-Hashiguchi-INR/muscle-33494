アプリケーション名：The First Training（ORIGINAL-APP)
アプリケーション概要：筋トレの紹介（画像・映像）。結果を共有。みんなで考える。オリジナルトレーニング方法。
                  基本的には、投稿型をベース。いいね機能を追加。
URL：
テスト用アカウント：
利用方法：
目指した課題解決：
洗い出した要件：
実装した機能についてのGIFと説明：
実装予定の機能：
データベース設計：
ローカルでの動作方法：

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