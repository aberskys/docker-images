#!/bin/bash

# add 'server_tokens off' to nginx.conf
# to hide server version

sed -i '/http {/a \
    server_tokens off;' /etc/nginx/nginx.conf

for FILE in `ls -A /etc/nginx/site-templates/*.conf`; do
    # reset template if it is not mounted
    NAME=$(basename $FILE)
    if mount | grep "/etc/nginx/sites-enabled/$NAME"; then
        echo "[INFO] skiping template update: $FILE";
    else
        echo "[INFO] updating nginx site template:  /etc/nginx/sites-enabled/$NAME > $FILE";
        cp -f "$FILE" "/etc/nginx/sites-enabled/$NAME"
    fi
done

exec "$@"
