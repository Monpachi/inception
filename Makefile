
up:
	sudo mkdir -p /home/vagrant/data/wordpress
	sudo mkdir -p /home/vagrant/data/mariadb
	docker compose -f srcs/docker-compose.yml build
	docker compose -f srcs/docker-compose.yml up -d

all:
	up


down:
	docker compose srcs/docker-compose.yml down

clean:
	docker compose -f srcs/docker-compose.yml down --volumes
	docker system prune -af

cleandb:
	sudo rm -rf /home/vagrant/data

fclean: clean cleandb 

.PHONY: all up clean cleandb fclean 
