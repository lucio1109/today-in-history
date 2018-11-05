#!/bin/bash
# author: gfw-breaker

folder="today-in-history"
md_page=/usr/share/nginx/html/$folder/index.md
youtube_url=https://www.youtube.com/channel/UCa6ERCDt3GzkvLye32ar89w
dl_script=https://raw.githubusercontent.com/gfw-breaker/youtube-video/master/dl.sh


# download
cd /root/$folder
wget -q $dl_script -O dl.sh
bash dl.sh $folder $youtube_url


# push
cd /root/$folder
git pull
sed -i '5,$d' README.md
cat $md_page >> README.md
git commit -a -m 'ok'
git push


