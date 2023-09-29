up-db:
	docker-compose -f docker-compose-db.yml up -d

down-db:
	docker-compose -f docker-compose-db.yml down

up-spy:
	docker-compose -f docker-compose-spy.yml up -d --build

down-spy:
	docker-compose -f docker-compose-spy.yml down