# 概要
- QRコード読み取りアプリ

# 制約
- riverpodを使え
- mvvmアーキテクチャを使え
- ある程度デザインに気を配れ。再三繰り返すが時間をかけると本末転倒なので気を付けるように

# 仕様
- 画面は2つ
- 1つ目の画面(結果表示画面)
    - 真ん中に結果を表示する
    - 起動時はqrを読んでないので結果は空っぽ
    - 2画面目のqrの中身を「/で分割・改行」して出力する (123/456/789) -> (123\n456\n789)
- 2つ目の画面(QR読み込み画面)
    - QRを読み込む
    - qrのデータに"/"があれば正規のデータとして1つ目の画面に戻って結果を表示する
    - "/"がなければsnackbarで「正規のデータでありません」と表示する