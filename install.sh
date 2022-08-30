[ ! -f "/etc/systemd/system/xuione.service" ] && echo "XUI.one isn't installed!" && exit
[ ! -d "/home/xui/config" ] && echo "XUI.one isn't installed!" && exit

echo "--------------------------"
echo "--------- CRACKING -------"
echo "--------------------------"
sleep 2
sudo systemctl stop xuione
sleep 5
cp -r license /home/xui/config/license
cp -r xui.so /home/xui/bin/php/lib/php/extensions/no-debug-non-zts-20190902/xui.so
sleep 2
sed -i "s/^license.*/license     =   \"cracked\"/g" /home/xui/config/config.ini
sleep 2
ln -sf /home/xui/bin/php/bin/php_7.4 /home/xui/bin/php/bin/php
ln -sf /home/xui/bin/php/sbin/php-fpm_7.4 /home/xui/bin/php/sbin/php-fpm
sleep 2
ln -sf /home/xui/bin/php/bin/php_7.4 /home/xui/bin/php/bin/php_7.2
ln -sf /home/xui/bin/php/sbin/php-fpm_7.4 /home/xui/bin/php/sbin/php-fpm_7.2
sleep 2
sudo systemctl start xuione
sudo /home/xui/tools access
echo "------------------  DONE ---------------"
