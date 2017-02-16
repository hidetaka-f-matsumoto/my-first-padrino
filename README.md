# my first padrino

* Ruby/Padrino 公式の blog チュートリアル
  * http://padrinorb.com/guides/getting-started/blog-tutorial/
* ORM: Sequel

```
$ cd path/to/my-first-padrino/db
$ docker build -t hide/my-first-padrino-db .
$ docker create -t --name my-first-padrino-db -p 3306:3306 hidetakafm/my-first-padrino-db
$ docker start my-first-padrino-db
$ docker exec -it my-first-padrino-db bash
```

```
$ cd path/to/my-first-padrino
$ docker build -t hide/my-first-padrino .
$ docker create -t -v absolute/path/to/my-first-padrino:/var/www -p 3001:3000 --link my-first-padrino-db:db --name my-first-padrino hidetakafm/my-first-padrino
$ docker start my-first-padrino
$ docker exec -it my-first-padrino bash
```
