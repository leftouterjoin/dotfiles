#!/bin/bash

less << __EOF__
# 移動
ctrl-f	1個右へカーソルを移動
ctrl-b	1個左へカーソルを移動
alt-f	単語単位で右へカーソルを移動
alt-b	単語単位で右へカーソルを移動
ctrl-a	行頭へカーソルを移動★
ctrl-e	行末へカーソルを移動★

# 編集
ctrl-t	1つ前と現在の文字を入れ替える。
ctrl-h	カーソルの左側の文字を削除
ctrl-d	カーソルの文字を削除
ctrl-w	カーソルより左側を単語単位で削除
alt-d	カーソルより右側を単語単位で削除
ctrl-u	カーソルより左側全部を削除★
ctrl-k	カーソルより右側全部を削除★
ctrl-y	貼付け 上記ctrl-w,ctrl-kなどで削除した文字列をペーストできる

# 他いろいろ
ctrl-l	画面のクリア
ctrl-c	実行中のプログラムを強制終了
ctrl-d	終了
ctrl-s	画面の更新を止める
ctrl-q	画面の更新を再開
ctrl-m	ENTERと同じ
ctrl-j	ENTERと同じ
ctrl-o	ENTERと同じ

# 履歴
ctrl-p	1つ前のコマンド履歴を見る
ctrl-n	1つ先のコマンド履歴を見る
ctrl-r	コマンド履歴の検索

__EOF__
