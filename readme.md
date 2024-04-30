# MySQL with PHPMyAdmin Database Platform

This is a repo to set up the database platform and quickly spawn a fresh mysql database with PHPMyAdmin web ui.

```bash
cd mysql-phpadmin

cp .env.sample .env

# Start
docker compose up -d

# Stop
docker compose down

# Reset mysql data
docker volume rm mysql-phpmyadmin_mysql

```

With docker compose up and running a **mysql** will be spawn with all the necessary databases, schemas and data to start the development.

The **mysql** will load all sql file from `./sql-scripts` sorted by the file name.

Connection string for mysql instance :

```txt
host : localhost or host.docker.internal (for phpmyadmin web UI)
port : 3306
user : root
password : <your-password-at-env-file>
```

**PHPMyAdmin** web ui for database IDE is running at [link](http://localhost:8080).
