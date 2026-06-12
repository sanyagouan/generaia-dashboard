FROM nginx:alpine
RUN apk add --no-cache gettext
COPY nginx.conf /etc/nginx/nginx.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh
COPY index.html /usr/share/nginx/html/index.html.template
EXPOSE 80
ENTRYPOINT ["/entrypoint.sh"]# v2 rebuild 1781301616
