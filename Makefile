push_flow: build test push

build:
	cp .env.example .env
	docker compose -f docker-compose.yml build

test:
	cp .env.example .env
	docker compose -f docker-compose.yml up db -d
	sleep 5
	docker compose stop
	docker compose -f docker-compose.yml up -d
	docker compose exec app make test
	docker compose stop

push:
	docker compose -f docker-compose.yml push app

update_app:
	docker pull nodar126/app:latest

start_app:
	docker run -p 8080:8080 -e NODE_ENV=development nodar126/app:latest make dev