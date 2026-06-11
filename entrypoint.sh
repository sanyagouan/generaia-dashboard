#!/bin/sh
# Replace SUPABASE_ANON_KEY placeholder with the actual env var
envsubst '${SUPABASE_ANON_KEY}' < /usr/share/nginx/html/index.html.template > /usr/share/nginx/html/index.html
# Start nginx
nginx -g 'daemon off;'