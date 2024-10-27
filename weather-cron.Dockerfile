FROM php:8.1.17-cli-alpine

RUN docker-php-ext-install pdo_mysql

RUN (crontab -l; echo "*	*	*	*	*	php /var/www/weather-app/artisan schedule:run" ) | crontab -
RUN (crontab -l; echo "" ) | crontab -

CMD [ "/usr/sbin/crond", "-f", "-d8" ]
