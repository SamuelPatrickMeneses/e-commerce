# ![php](https://img.shields.io/badge/Php-8993BE?style=for-the-badge&logo=php&logoColor=white) E-commerce Website
E-commerce web application built using php routing. Instead of relying on the web server to map the request path to a file, all requests are forwarded to [index.php](/src/index.php) which has defined routes and callbacks registered to each route. If the request URI is a valid route, the callback returns a page to the user else, redirected to the 404 page.

[Live Demo](https://web.archive.org/web/20220907155514/https://tomiwa.com.ng/yemyem/)

## Features
- Login and registration system
- Password reset
- Ordering system
- Update profile
- Order history
- CSRF protection
- Input sanitisation
- Sends invoice to user's email using ([sendgrid](https://sendgrid.com))
- Livechat ([intercom](https://intercom.com))
    #### Admin Panel
- Create, modify and delete products, customers and faq
- Unlimited product pictures
- Image compression ([php_gd](https://php.net/manual/en/book.image.php)): 50%
- Image magic bytes verification
- Create or select product category
- Export/Import database
- Last 7 days sales and revenue stats using Chartjs
- Modify contact details and privacy policy
- Send email to users ([sendgrid](https://sendgrid.com))

## Setup

### Enviroment
the enviroment variables must declared in the ./.env file, are they:

##### DB_NAME
the database name, usade by db and php containers.

##### DB_HOST
the database host, usade by db and php containers, defalt value db.

##### DB_PORT
the database port, usade by db and php containers, defalt value 3306.

##### DB_PASSWORD
the aplication database password, usade by db and php containers.

##### DB_USER
the aplication database user, usade by db and php containers.

##### MYSQL_ROOT_PASSWORD
the database root password, used by db container.

##### MYSQL_ROOT_USER
the database root user, used by db container.

### SENDGRID_API_KEY
the sendgrid API key, usade by php container.

### INTERCOM_APP_ID
the intercom app id, usade by php container.

### SENDGRID_DOMAIN
the your sendrid domain, usade by php container.

### DEB_REPOSITORY
if you can't install php_gd/gd dependencies, set here a debian repository of your trust(example: "deb http://ftp.br.debian.org/debian/ buster main"), otherwise dont't set it, used by /Dockerfile.
warning: Be careful not to cause conflicts with other already declared repositories in the "/etc/apt/source.list" file of your php base image.

## Rum
run the docker compose envirement.
```
$ ./run up -d 
```
setup the database(create the aplication user, the database and run the conthent of src/db-settings.sql).
```
$ ./run db:reset
```
## Admin Credentials
```
uri: /admin/login
username: admin
password: 123456
```

## Screenshots
![Login](screenshots/login.png)
![Register](screenshots/register.png)
![Home](screenshots/home.png)
![Shop](screenshots/shop.png)
![Product](screenshots/item.png)
![Cart](screenshots/cart.png)
![Order Success](screenshots/success.png)
![Profile](screenshots/profile.png)
![Orders](screenshots/orders.png)
![Order Details](screenshots/order-details.png)
![Forgot Password](screenshots/forgot-password.png)
![Invoice](screenshots/invoice.png)
![Admin Login](screenshots/admin-login.png)
![Admin Home](screenshots/admin-home1.png)
![Admin Home](screenshots/admin-home2.png)
![Admin Customers](screenshots/admin-customers.png)
![Admin Orders](screenshots/admin-orders.png)
![Admin Products](screenshots/admin-products.png)
![Admin Reset Password](screenshots/admin-reset-password.png)
![Admin Settings](screenshots/admin-settings.png)
