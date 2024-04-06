# 概要
- 簡易アンケートアプリ

# 制約
- riverpodを使え
- mvvmアーキテクチャを使え
- ある程度デザインに気を配れ。再三繰り返すが時間をかけると本末転倒なので気を付けるように

# 仕様
- 画面は2つ
- 1つ目の画面
    - radio buttonでユーザに「幸, 不幸」のどちらかを選択させる
    - radio buttonの選択を行ったら遷移ボタンで2つ目の画面に遷移できるように
    - radio buttonを選択していない場合、遷移ボタンは灰色でタップできないことを暗示するように
    - radio buttonで選択した値を $1 と呼ぶ
- 2つ目の画面
    - AppBarのtitleに1つ目の画面の「幸, 不幸」で選択した方を表示しろ
    - radio buttonで「金、色欲、人間関係、災難」のどれかを選択させる
    - 「要因は？」というテキストを添えろ
    - radio buttonで選択した値を $2 と呼ぶ
    - radio buttonの選択を行ったら回答ボタンで「私は$1です。要因は$2です。」というテキストをダイアログで表示しろ
    - radio buttonを選択していない場合、回答ボタンは灰色でタップできないことを暗示するように