

```
docker build -t registry.cn-hangzhou.aliyuncs.com/nine/my_gitbook:v1.2 .
docker push registry.cn-hangzhou.aliyuncs.com/nine/my_gitbook:v1.2
```

```angular2html
docker run -d  --name=blog -p 80:80  -v /home/app/blog/_book:/usr/share/nginx/html registry.cn-hangzhou.aliyuncs.com/nine/my_gitbook:v1.2
```
