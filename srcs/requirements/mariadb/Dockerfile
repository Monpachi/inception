FROM debian:buster

RUN apt-get -y update && apt upgrade -y && apt-get install mariadb-server -y

COPY ./conf/script.sh /

RUN chmod +x /script.sh

EXPOSE 3306

ENTRYPOINT ["/script.sh"]
CMD ["mysqld_safe", "--bind-address=0.0.0.0"]
