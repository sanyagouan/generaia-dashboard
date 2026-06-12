#!/bin/sh
# Replace env vars in template
envsubst '${SUPABASE_ANON_KEY} ${SUPABASE_URL}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html
# Start nginx
nginx -g 'daemon off;'
