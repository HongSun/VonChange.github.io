#!/usr/bin/env bash
gitbook build
cp -rf myfile/* _book/myfile/
find  _book -name '*.html' | xargs sed -i "" "s|https://unpkg.com|/myfile|g"
find  _book -name '*.html' | xargs sed -i "" "s|generator|baidu-site-verification|g"
find  _book -name '*.html' | xargs sed -i "" "s|GitBook 3.2.3|cAxqlT3C5k|g"
tar -czvf dist.tar.gz _book
scp dist.tar.gz root@$ALIHOST:/home/app/blog/
scp blog.sh root@$ALIHOST:/home/app/blog/
ssh root@$ALIHOST bash /home/app/blog/blog.sh
