FROM debian:buster

RUN apt-get -y update && apt-get -y install nginx && apt-get -y install openssl
RUN mkdir -p /etc/nginx/ssl
RUN openssl req -new -newkey rsa:4096 -days 365 -nodes -x509 -subj "/C=US/ST=Denial/L=Springfield/O=Dis/CN=vchan.42.fr" -keyout /etc/nginx/ssl/vchan.42.fr.key -out /etc/nginx/ssl/vchan.42.fr.cert

RUN chmod 755 /var/www/
RUN chown -R www-data:www-data /var/www/
COPY ./conf/default /etc/nginx/sites-enabled/default

EXPOSE 443

ENTRYPOINT ["nginx", "-g", "daemon off;"]
