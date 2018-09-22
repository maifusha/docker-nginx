FROM nginx:1.11-alpine

LABEL maintainer="lixin <1045909037@qq.com>"

COPY conf /etc/nginx

COPY docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

CMD ["nginx", "-g", "daemon off;"]
