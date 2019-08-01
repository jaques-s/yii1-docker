up: docker-up

docker-up:
	docker-compose up --build -d

docker-clear:
	docker-compose down --remove-orphans

perm:
	sudo chgrp -R ${USER} www
	sudo chown -R ${USER}:${USER} www
	sudo chmod -R ug+rwx www
