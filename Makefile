tests:
	docker compose -f docker-compose.yml up --abort-on-container-exit app
production:
	docker compose build app
push:
	docker compose -f push app