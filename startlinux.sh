os="ubuntu" 
username="linux" 
unset LD_PRELOAD
proot \
  -0 \
  --link2symlink \
  -r ~/$os \
  -b /dev/ \
  -b /sys/ \
  -b /data/ \
  -b /proc/ \
  -b /sdcard/ \
  -b /storage/ \
  /usr/bin/env \
  -i \
    HOME=/root \
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games \
    TERM="xterm-256color" \
    USER=$username \
    USERNAME=$username \
    ANDROID_DATA=/data \
    /usr/bin/bash --login
