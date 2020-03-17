#!/bin/sh
cat > /etc/nginx/conf.d/www.conf << EOF
server {
        server_name $HOSTNAME;
        root ${ROOT_DOC};
        listen ${IP:-0.0.0.0}:${PORT:-80};
}
EOF
exec "$@"
