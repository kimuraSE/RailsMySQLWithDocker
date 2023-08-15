# 初期設定
・最初に実行するコマンド
```
export UID=${UID}
export GID=${GID}
docker-compose run web bundle exec rails new . -f -d mysql -T -B --api
UID_GID="$(id -u):$(id -g)" dokcer-compose build
docker-compose up
```

・ファイルの編集
```
default: &default
  adapter: mysql2
  encoding: utf8mb4
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: root
  password: password
  host: db
  port: 3306

development:
  <<: *default
  database: develop_db
```

・DB作成
```
docker-compose up -d
docker exec -it コンテナ /bin/bash
rails db:create
```
