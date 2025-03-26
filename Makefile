build:
	docker-compose build
run:
	rm -rf node_modules/.vite && docker-compose up --remove-orphans -d && npm run dev

down:
	docker-compose down

dbshow:
	php artisan db:show

seed:
	php artisan db:seed

migrate:
	docker exec laravelfrontendtask-laravel.test-1 bash -c "php artisan migrate:fresh --seed"

clear:
	php artisan optimize:clear

permissions:
	chmod 777 ~/Projects/LaravelFrontEndEask && sudo chown wislim:wislim ~/Projects/LaravelFrontEndEask
storagelink:
	docker exec laravelfrontendtask-laravel.test-1 bash -c "php artisan storage:link"
storagePermission:
	sudo chmod -R 777 storage
con:
	docker exec -ti laravelfrontendtask-laravel.test-1 bash
stan:
	./vendor/bin/phpstan analyse
