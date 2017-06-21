#基于alpine的tengine php-fpm镜像
[toc]
##版本：
tengine 2.2.0
php 5.6.30
##使用方式
```
git clone git_adress
docker build .
```     
##启动
**注意：为了保证在容器外可配置nginx选项，并将nginx和php日志本地保存，请使用volume挂载，初次启动，请保证本地挂载目录为空目录**，比如：
 
```
docker run -dit -p 80:80 -p 443:443 -v /data/php-test/nginx_conf:/usr/local/nginx/conf -v /data/php-test/nginx_logs:/usr/local/nginx/logs -v /data/php-test/phplogs:/phplogs --name php container_ID
```

容器volumes目录：

```
/usr/local/nginx/conf  #nginx配置文件目录
/usr/local/nginx/logs  #nginx日志文件目录
/phplogs               #php-fpm日志以及慢日志目录
```

另外,可将code本地挂载，建议挂载于容器中`/website`目录下。





