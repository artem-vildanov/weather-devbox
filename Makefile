up:
	docker-compose -f docker-compose.app.yml up -d
	docker-compose -f docker-compose.devenv.yml up -d

down:
	docker-compose -f docker-compose.devenv.yml down
	docker-compose -f docker-compose.app.yml down

up-app:
	docker-compose -f docker-compose.app.yml up -d
