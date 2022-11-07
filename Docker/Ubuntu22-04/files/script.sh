#!/bin/bash

sed -i 's|%OWNER%|'"$OWNER"'|g' /var/www/html/index.html
sed -i 's|%TYPE%|'"$TYPE"'|g' /var/www/html/index.html
sed -i 's|%OS_FAMILY%|'"$OS_FAMILY"'|g' /var/www/html/index.html

apache2ctl -D FOREGROUND

echo "skript ----OK"

