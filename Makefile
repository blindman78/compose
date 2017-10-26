build:
	docker build --file="docker/images/apache/Dockerfile" --tag=blind_apache docker/images/apache/.
	docker build --file="docker/images/php7/Dockerfile" --tag=blind_php7 docker/images/php7/.
	docker build --file="docker/images/mysql/Dockerfile" --tag=blind_mysql docker/images/mysql/.
	docker build --file="docker/images/myadmin/Dockerfile" --tag=blind_myadmin docker/images/myadmin/.
	docker build --file="docker/images/symfony/Dockerfile" --tag=blind_symfony docker/images/symfony/.
	docker build --file="docker/images/app/Dockerfile" --tag=blind_app docker/images/app/.

run:
	docker-compose up