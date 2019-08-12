# README

・レビュワーの方へご連絡
期限を過ぎてしまい申し訳ありません。本業が落ち着いて夏休みもあるのでここから巻き返したいと思います。
もちろん動作確認はできていますがテストが不十分です。

・自分が苦労した点
gitのイメージがいまだにあやふや、コマンドが多過ぎて混乱してしまう。
モデルの関連付けが難しい。belongs_toやhas_manyやthroughオプションなど。。reference型など。。
facebookの認証機能
通知機能（いいねまでしかできてません。フォロー通知とコメント通知は未実装です）

・学んだ点
#facebook認証には、facebookのサイトで/users/auth/facebook/callbackを追加する
#modelのbelongs_toのとこにoptional:trueをつけないと、nilがある場合にsaveができない

・相談したい点
notification_helper.rbの5行目において、
User.find_by(id:notification.visiter_id).name を
notification.visiter.name
にリファクタリングしようとしたのですができませんでした。モデルの関連付けがわからないです。
フォロー関連付けの時は上手くいったのですが。。
visiterからuserオブジェクトを引っ張ってこれないです。

いいね機能のajax設定をしましたがリロードしないといいねボタンが黒くなりません。理由が不明です。
（ajaxはもう古いみたいな記事もあったので別の方法でも構いませんので良い方法をご教授ください。）



ーーメモ
#本番環境用のコールバックURL
https://subkadai.herokuapp.com/users/auth/facebook/callback