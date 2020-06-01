FROM nginx:1.17.2

RUN echo "Asia/shanghai" > /etc/timezone;
ADD  _book /usr/share/nginx/html

COPY ./config/nginx.conf /etc/nginx/nginx.conf
COPY config/init.sh /usr/share/nginx/html
RUN chmod 777 /usr/share/nginx/html/init.sh

ENTRYPOINT ["/usr/share/nginx/html/init.sh"]
CMD ["nginx", "-g", "daemon off;"]

EXPOSE 80

