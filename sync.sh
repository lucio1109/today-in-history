#!/bin/bash
# author: gfw-breaker

folder="today-in-history"
#stick="5DaFdDl3u6A"
stick="_IyPfO7ESho"
md_page=/usr/share/nginx/html/$folder/index.md
youtube_url=https://www.youtube.com/channel/UCa6ERCDt3GzkvLye32ar89w
dl_script=https://raw.githubusercontent.com/gfw-breaker/youtube-video/master/dl.sh


# download
cd /root/$folder
wget -q $dl_script -O dl.sh
bash dl.sh -f $folder -u $youtube_url -s $stick -a

