push_flow: build test push

build:
	ENV_FILE=env.example docker compose -f docker-compose.yml build

test:
	docker compose run -d db
	sleep 10
	docker compose -f docker-compose.yml run app make test
	docker compose stop db

push:
	docker compose -f docker-compose.yml push app

update_app:
	docker pull nodar126/app:latest

start_app:
	docker run -p 8080:8080 -e NODE_ENV=development nodar126/app:latest make dev