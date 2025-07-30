build:
	docker compose -f docker-compose.yml build app

test:
	docker run nodar126/app make test

push:
	docker compose -f docker-compose.yml push app

update_app:
	docker pull nodar126/app:latest

start_app:
	docker run -p 8080:8080 -e NODE_ENV=development nodar126/app:latest make dev