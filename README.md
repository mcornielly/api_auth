# api_auth
Laravel api environment with authentication via passaport and empty workspace, ready for working.

Requirements
-------------------------
- Make sure you have PHP v7.1 installed
- Make sure you have composer installed (https://getcomposer.org/)
- Make sure you have mysql database administrator installed (server of preference) 

- Make sure you have Laravel 5.7 installed (https://laravel.com/docs/master/installation)
```
$ composer global require laravel/installer
```
- Make sure you have node.js installed (https://nodejs.org/es/download/)
```
cd/to/patch/
$npm install
```

First steps:
----------------------------------
Create and configure the .env file and configure the following
```
$ /api_auth/.env
```

file (.env)
----------------------------------
```
- APP_NAME=Laravel
- APP_ENV=local
- APP_KEY=base64:
- APP_DEBUG=true
- APP_URL=http://localhost

- LOG_CHANNEL=stack

- DB_CONNECTION=mysql
- DB_HOST=127.0.0.1
- DB_PORT=3306
- DB_DATABASE=db_api_rest
- DB_USERNAME=root
- DB_PASSWORD=

- BROADCAST_DRIVER=log
- CACHE_DRIVER=file
- QUEUE_CONNECTION=sync
- SESSION_DRIVER=file
- SESSION_LIFETIME=120

- REDIS_HOST=127.0.0.1
- REDIS_PASSWORD=null
- REDIS_PORT=6379

- MAIL_DRIVER=smtp
- MAIL_HOST=smtp.mailtrap.io
- MAIL_PORT=2525
- MAIL_USERNAME=86f3318f2e805a
- MAIL_PASSWORD=166e18aa73095b
- MAIL_ENCRYPTION=null

- PUSHER_APP_ID=
- PUSHER_APP_KEY=
- PUSHER_APP_SECRET=
- PUSHER_APP_CLUSTER=mt1

- MIX_PUSHER_APP_KEY="${PUSHER_APP_KEY}"
- MIX_PUSHER_APP_CLUSTER="${PUSHER_APP_CLUSTER}"
```

Generate key:
------------
```
$ /api_auth/php artisan key:generate
```

Execute the command:
```
$ php artisan migrate
```
Run the server:
```
$php artisan serve
``` 
