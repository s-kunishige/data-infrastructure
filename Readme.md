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
でdry-runができる。  
<br>
EmbulkはETL（Extract, Transform, Load）ツールとも言われます。  
inはExtract（データの抽出）、outはLoad（データの書き出し）が行えます。  
そしてfilterではTransform（データの加工）が行えます。  
```
embulk gem install embulk-filter-hash
```
でembulkにfilter-hashを追加した後にconfig.ymlのinとoutの間に
```
filters:
  - type: hash
    columns:
    - { name: account }
```
を追加することで指定した列をハッシュ化できる。  
<br>

# digdagのサンプル
```
digdag init mydag
```
でサンプルファイルを作成

```
cd mydag
digdag run mydag.dig
```
でサンプルを実行。  
<br>

### pythonの実行
digdag_python_sampleディレクトリに移動して行う。
```
digdag run sample.dig
```
で実行。  
定期実行させるには
```
digdag scheduler
```
で.digファイル内に記述したscheduleの間隔で実行される。