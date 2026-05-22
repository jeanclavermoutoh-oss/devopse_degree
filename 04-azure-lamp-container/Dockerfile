FROM ubuntu:22.04

RUN apt update && apt install -y \
    apache2 \
    php \
    libapache2-mod-php

COPY index.php /var/www/html/index.php

EXPOSE 80

CMD ["apachectl", "-D", "FOREGROUND"]
