#!/bin/sh

docker run -d --restart=always -p 80:80 -v /var/run/docker.sock:/tmp/docker.sock -t hideki/nginx-proxy
