tests:
	docker compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
production:
	docker compose -f docker-compose.yml build app
push:
	docker compose -f docker-compose.yml push app