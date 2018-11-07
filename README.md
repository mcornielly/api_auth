# api_auth
Laravel api environment with authentication via passaport and empty workspace, ready for working.

Requirements
-------------------------
Make sure you have PHP v7.1 installed
Make sure you have composer installed (https://getcomposer.org/)
Make sure you have mysql database administrator installed (server of preference) 
Make sure you have Laravel 5.7 installed (https://laravel.com/docs/master/installation)

Execute the command:
$ composer global require laravel/installer

First steps:
----------------------------------
Create and configure the .env file and configure the following

DB_CONNECTION=mysql
DB_HOST=127.0.0.1
DB_PORT=3306
DB_DATABASE=db_app_services
DB_USERNAME=root
DB_PASSWORD=

Execute the command:
$ php artisan migrate

Run the server
$php artisan serve

