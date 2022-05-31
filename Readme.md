# embulkのサンプル

exampleコマンドでサンプルファイルを生成
```
embulk example ./try1
```

guessコマンドで最低限の設定で補完した設定ファイルを生成
```
embulk guess ./try1/seed.yml -o config.yml
```

```
embulk preview config.yml
```
でdry-runができる

EmbulkはETL（Extract, Transform, Load）ツールとも言われます。  
inはExtract（データの抽出）、outはLoad（データの書き出し）が行えます。  
そしてfilterではTransform（データの加工）が行えます。  
```
embulk gem install embulk-filter-hash
```
でembulkにfilter-hashを追加した後に  


config.ymlのinとoutの間に
```
filters:
  - type: hash
    columns:
    - { name: account }
```
を追加することで指定した列をハッシュ化できる