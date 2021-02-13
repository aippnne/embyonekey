#!/bin/sh
cd /var/packages/EmbyServer/target/mono/bin
curl https://raw.githubusercontent.com/aippnne/embyonekey/master/mb3admin.com.cert.pem >> /etc/ssl/certs/ca-certificates.crt
./cert-sync /etc/ssl/certs/ca-certificates.crt
cd /usr/local/etc/nginx/conf.d/9b390d8c-ddf3-4bd9-b757-f2715cb02df0
wget https://raw.githubusercontent.com/aippnne/embyonekey/master/user.conf
nginx -s reload

