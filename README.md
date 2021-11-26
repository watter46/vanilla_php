# Laravel-npm_non-root

## Usage

```bash
$ git clone git@github.com:watter46/php_nginx_non-root.git
$ cd php_nginx_non-root
$ make create-project
```

- phpとnginxの実行ユーザー名、グループ名はそれぞれ
Dockerfileで指定できます(デフォルトではユーザー名:hoge グループ名: hoge)

http://localhost:28000

Bootstrapインストール手順

```bash
$ make bootstrap
```

- bootstrap反映させるファイルに以下を記述
```bash
$ <link href="{{ asset('css/app.css') }}" rel="stylesheet">
```

- Laravelの.envはdocker-comopseの環境設定で上書きします
値を変更したい場合はmake_env.shを変更してください

- make_env.sh(デフォルト)
```bash
WEB_PORT=8080
DB_PORT=3306
DB_NAME=laravel_local
DB_USER=phper
DB_PASS=secret
```

## Tips

- Read this [Makefile](https://github.com/watter46/Laravel-npm_non-root/blob/main/Makefile).

## Container structures

```bash
├── app
├── web
└── db
```
### app container

- Base image
  - [php](https://hub.docker.com/_/php):7.4-fpm
  - [composer](https://hub.docker.com/_/composer):2.0

### web container

- Base image
  - [nginx](https://hub.docker.com/_/nginx):1.20-alpinea

### db container

- Base image
  - [mysql/mysql-server](https://hub.docker.com/r/mysql/mysql-server):8.0
