#!/bin/bash
#!/bin/expect

sleep 30s
local_host="`ifconfig > /home/zs/PycharmProjects/CHINESE-OCR/ip`"

cd /home/zs/PycharmProjects/CHINESE-OCR/
git pull git@github.com:zhangshengsheng/CHINESE-OCR.git master

sleep 30s
git add ip

git commit -m "ip地址--时间："$(date +%Y%m%d%H%M%S)
git push -u git@github.com:zhangshengsheng/CHINESE-OCR.git master
