#!/usr/bin/env bash
gitbook build
tar -czvf dist.tar.gz _book
scp dist.tar.gz root@$ALIHOST:/home/app/blog/
ssh root@$ALIHOST rm -rf /home/app/blog/_book
ssh root@$ALIHOST tar -zxvf /home/app/blog/dist.tar.gz -C /home/app/blog
ssh root@$ALIHOST docker restart blog
