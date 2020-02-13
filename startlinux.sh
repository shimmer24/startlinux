os="ubuntu" 
username="${os}" 
unset LD_PRELOAD
proot \
  -0 \
  --link2symlink \
  -r ~/${os} \
  -b /dev/ \
  -b /sys/ \
  -b /proc/ \
  -b /sdcard/ \
  -b /storage/ \
  /usr/bin/env \
  -i \
    HOME=/root \
    PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games \
    TERM="xterm-256color" \
    USER=${username} \
    USERNAME=${username} \
    /usr/bin/bash --logl
    
