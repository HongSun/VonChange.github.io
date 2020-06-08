FROM nginx:1.17.2

RUN echo "Asia/shanghai" > /etc/timezone;
#ADD  _book /usr/share/nginx/html

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY config/init.sh /etc/nginx
RUN chmod 777 /etc/nginx/init.sh
VOLUME /usr/share/nginx/html
ENTRYPOINT ["/etc/nginx/init.sh"]
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80

