build:
	docker build --file="docker/images/php7/Dockerfile" --tag=blind_php7 docker/images/php7/.
	docker build --file="docker/images/mysql/Dockerfile" --tag=blind_mysql docker/images/mysql/.
	docker build --file="docker/images/symfony/Dockerfile" --tag=blind_symfony docker/images/symfony/.

run:
	docker-compose up -d