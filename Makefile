NAME_APACHE=apache
NAME_PHP=php7
NAME_MYSQL=mysql
NAME_MYADMIN=myadmin
NAME_SYMFONY=symfony
NAME_APP=app

build:
	docker build --file="docker/images/apache/Dockerfile" --tag="$(NAME_PHP):latest" docker/images/apache/.
	docker build --file="docker/images/php7/Dockerfile" --tag="$(NAME_PHP):latest" docker/images/php7/.
	docker build --file="docker/images/mysql/Dockerfile" --tag="$(NAME_MYSQL):latest" docker/images/mysql/.
	docker build --file="docker/images/myadmin/Dockerfile" --tag="$(NAME_MYADMIN):latest" docker/images/myadmin/.
	docker build --file="docker/images/symfony/Dockerfile" --tag="$(NAME_SYMFONY):latest" docker/images/symfony/.
	docker build --file="docker/images/app/Dockerfile" --tag="$(NAME_APP):latest" docker/images/app/.

run:
	docker-compose up