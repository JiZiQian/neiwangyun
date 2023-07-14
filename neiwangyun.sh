#!/bin/sh
while true; do {
    ssh -R 80:127.0.0.1:22 sh@sh3.neiwangyun.net | grep https:// --line-buffered > neiwangyun.txt &
    cat neiwangyun.txt
    git add .
    git commit -m "update https"
    git push
    sleep 3600
}; done