・実行
```
export UID=${UID}
export GID=${GID}
docker-compose run web bundle exec rails new . -f -d mysql -T -B --api
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

・ビルド
```
docker-compose build
```

・DB作成
```
docker-compose run web rails db:create
```

・起動
```
docker-compose up
```

操作
```
docker exec -it rails-api /bin/bash
rails dbconsole
```
