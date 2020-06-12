#!/usr/bin/env bash
gitbook build
cp -rf myfile/* _book/myfile/
find  _book -name 'index.html' | xargs sed -i "" "s|https://unpkg.com|myfile|g"
tar -czvf dist.tar.gz _book
scp dist.tar.gz root@$ALIHOST:/home/app/blog/
scp blog.sh root@$ALIHOST:/home/app/blog/
ssh root@$ALIHOST bash /home/app/blog/blog.sh
