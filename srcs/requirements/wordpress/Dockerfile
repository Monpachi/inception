FROM	debian:buster

RUN	apt-get update && apt-get install php-fpm php-curl php-gd php-intl php-mbstring php-mysql php-soap php-xml php-xmlrpc php-zip curl wget mariadb-client -y

RUN curl -O https://raw.githubusercontent.com/wp-cli/builds/gh-pages/phar/wp-cli.phar

RUN	chmod +x wp-cli.phar

RUN	mv wp-cli.phar /usr/local/bin/wp-cli

WORKDIR /var/www/wordpress

RUN	wp-cli core download --allow-root

RUN mkdir /run/php

COPY ./conf/www.conf /etc/php/7.3/fpm/pool.d/www.conf
COPY ./conf/install.sh /

RUN chmod 777 index.php

RUN chmod +x /install.sh

EXPOSE 9000

ENTRYPOINT ["/install.sh"]
CMD ["php-fpm7.3", "-F"]
