### 搭建gitlab并使用CICD部署HelloWorld

#### 搭建gitlab

```angular2html
docker run --detach \
    --hostname gitlab.frp.vonchange.com \
    --env GITLAB_OMNIBUS_CONFIG="external_url 'http://gitlab.frp.vonchange.com:8099/'; gitlab_rails['gitlab_shell_ssh_port'] = 6022;gitlab_rails['gitlab_port'] = 8099;" \
    --publish 443:443 --publish 8099:8099 --publish 6022:22 \
    --name gitlab \
    --restart always \
    --volume /home/vonchange/data/gitlab/:/etc/gitlab \
    --volume /home/vonchange/data/gitlab/log:/var/log/gitlab \
    --volume /home/vonchange/data/gitlab/data:/var/opt/gitlab \
 gitlab/gitlab-ce:11.8.1-ce.0
```
