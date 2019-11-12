# python3.8-handson
for python3.8 hands on


## 1. リポジトリをクローンする


このリポジトリをcloneしておいてください。cloneするにはgitコマンドが使える状態である必要があります。
[gitのインストールページ](https://git-scm.com/book/ja/v1/%E4%BD%BF%E3%81%84%E5%A7%8B%E3%82%81%E3%82%8B-Git%E3%81%AE%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB#Mac%E3%81%AB%E3%82%A4%E3%83%B3%E3%82%B9%E3%83%88%E3%83%BC%E3%83%AB) を参照してインストールしてください。  
  

```
$ git clone https://github.com/hannari-python/python3.8-handson.git
```

## 2. Dockerを使ってJupyterNotebookを起動する

[Docker](https://www.docker.com/get-started)ページからインストーラーを使ってインストールしてください。  
他にもインストール方法があるので各自の環境に合わせてインストールしてください。  
`docker-compose` コマンドが使える状態にしてください。

リポジトリをクローンして `python3.8-handson/` に移動します。


```
$ cd python3.8-handson
```

Dockerコンテナを起動します。


```
$ docker-compose up --build
```

ブラウザでアクセスするとJupyterNotebookのページが表示されます。
[http://localhost:8888/](http://localhost:8888/)

(ポートが衝突する方は `docker-compose.yml` の ports: の 8888 ( : の左側の値) を任意に変えてください。



## 3. JupyterにTokenを入力する

Dockerを起動すると以下のようなログが出力されます。
JupyterNotebookでTokenの入力が求められる場合は `token=a06c774dd1edd27da72ae5abaa2da8791d19f460310eadb4` に記されている文字列を入力してください。  
もしくはログに出力されているように `http://127.0.0.1:8888/?token=a06c774dd1edd27da72ae5abaa2da8791d19f460310eadb4` にアクセスします。Tokenは起動するごとに変わるので毎回確認するようにしてください。ここに記述されているURLにはアクセスできません。  


```
jupyter_1  | [I 02:59:01.796 NotebookApp] Writing notebook server cookie secret to /root/.local/share/jupyter/runtime/notebook_cookie_secret
jupyter_1  | [I 02:59:02.057 NotebookApp] Serving notebooks from local directory: /root/notebook
jupyter_1  | [I 02:59:02.058 NotebookApp] The Jupyter Notebook is running at:
jupyter_1  | [I 02:59:02.058 NotebookApp] http://fb4471012b8a:8888/?token=a06c774dd1edd27da72ae5abaa2da8791d19f460310eadb4
jupyter_1  | [I 02:59:02.058 NotebookApp]  or http://127.0.0.1:8888/?token=a06c774dd1edd27da72ae5abaa2da8791d19f460310eadb4
jupyter_1  | [I 02:59:02.059 NotebookApp] Use Control-C to stop this server and shut down all kernels (twice to skip confirmation).
```


## 4. Dockerを終了する

Dockerを実行しているコンソールで「Control」キーと「C」キーを同時に押して(Ctrl+C)ください。


# ディレクトリについて

### `work/`

JupyterNotebook のNotebookファイル(*.ipynb)が保存されます。

