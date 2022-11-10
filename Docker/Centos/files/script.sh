#!/bin/bash

sed -i 's|%OWNER%|'"$OWNER"'|g' /usr/share/nginx/html/index.html
sed -i 's|%TYPE%|'"$TYPE"'|g' /usr/share/nginx/html/index.html
sed -i 's|%OS_FAMILY%|'"$OS_FAMILY"'|g' /usr/share/nginx/html/index.html
sed -i 's|%OS_VERSION%|'"$OS_VERSION"'|g' /usr/share/nginx/html/index.html

nginx -g 'daemon off;'

echo "skript ----OK"

