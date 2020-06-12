

```
docker build -t registry.cn-hangzhou.aliyuncs.com/nine/my_gitbook:v1.6 .
docker push registry.cn-hangzhou.aliyuncs.com/nine/my_gitbook:v1.6
```

```angular2html
docker run -d --restart=unless-stopped --name=blog --net=host  -v /home/app/blog/_book:/usr/share/nginx/html registry.cn-hangzhou.aliyuncs.com/nine/my_gitbook:v1.6
```
