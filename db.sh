source .env
docker-compose exec mysql0 mysql -u$DATABASE_USER -p$DATABASE_PASSWORD $DATABASE_NAME -A "$@"

