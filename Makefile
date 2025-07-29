tests:
	docker-compose -f docker-compose.yml up --abort-on-container-exit --exit-code-from app
run:
	docker-compose up --build