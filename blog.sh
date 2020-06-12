#!/usr/bin/env bash
rm -rf /home/app/blog/_book
tar -zxvf /home/app/blog/dist.tar.gz -C /home/app/blog
docker restart blog
