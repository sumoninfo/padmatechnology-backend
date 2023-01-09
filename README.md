# Padma Technology Backend

## Installation

### Clone the repository

    git clone https://github.com/sumoninfo/padmatechnology-backend.git

### Switch to the repo folder

    cd padmatechnology-backend

### Install all the dependencies using composer

    composer install

### Copy the example env file and make the required configuration changes in the .env file

    cp .env.example .env

### Database configuration

    DB_DATABASE=your_database_name
    DB_USERNAME=your_user_name
    DB_PASSWORD=your_password

### Mail configuration

    MAIL_MAILER=
    MAIL_HOST=
    MAIL_PORT=
    MAIL_USERNAME=
    MAIL_PASSWORD=
    MAIL_ENCRYPTION=
    MAIL_FROM_ADDRESS=noreplay@example.com
    MAIL_FROM_NAME="${APP_NAME}"

### Firebase configuration

    FIREBASE_SERVER_KEY=

### Generate a new application key & Storage Link

    php artisan key:generate
    php artisan storage:link

### Create table & dummy data from seeder

    php artisan migrate --seed

### Start the local development server

    php artisan serve

You can now access the server at http://localhost:8000

### Default Login credentials

```
=========Admin============
User: admin@gmail.com
Password: 12345678

=========Customer============
User: customer@gmail.com
Password: 12345678
```
