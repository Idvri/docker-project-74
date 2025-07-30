tests:
	docker compose -f docker-compose.yml up --abort-on-container-exit app
production:
	docker compose build app
push:
	docker compose push app