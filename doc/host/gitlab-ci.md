### 搭建gitlab并使用CICD部署HelloWorld

#### 搭建gitlab

> 购买一个域名 不备案也可以 最好备案了
```angular2html
docker run --detach \
    --hostname gitlab.frp.?.com \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.frp.?.com:8099/'; gitlab_rails['gitlab_shell_ssh_port'] = 6022;gitlab_rails['gitlab_port'] = 8099;" \
    --publish 443:443 --publish 8099:8099 --publish 6022:22 \
    --name gitlab \
    --restart always \
    --volume /home/vonchange/data/gitlab/:/etc/gitlab \
    --volume /home/vonchange/data/gitlab/log:/var/log/gitlab \
    --volume /home/vonchange/data/gitlab/data:/var/opt/gitlab \
 gitlab/gitlab-ce:11.8.1-ce.0
```

1.  ssh 用6022 http 使用8099 非80端口 当然网站备案了也可以用80端口
2. hostname 使用你购买的域名 比如 gitlab.frp.?.cn
3. 命令的？ 号是你要替换的域名,volume 需要你自定义你的映射本地地址
4. 方向代理后的最终地址为 gitlab.frp.?.cn:8099

> 可以先看使用frp代理本地机器到公网教程后在 回来学习下面CI教程


