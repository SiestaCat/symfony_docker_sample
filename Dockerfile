FROM php:8.4.6-cli

RUN php -r "copy('https://getcomposer.org/installer', 'composer-setup.php');" \
    && php composer-setup.php \
    && php -r "unlink('composer-setup.php');" \
    && mv composer.phar /usr/local/bin/composer

RUN curl -1sLf 'https://dl.cloudsmith.io/public/symfony/stable/setup.deb.sh' | bash

RUN apt-get update \
 && apt-get install -y --no-install-recommends \
      bash \
      git \
      unzip \
      zip \
      less \
      symfony-cli \
 && rm -rf /var/lib/apt/lists/*

RUN  git config --global user.email "jhondoe@example.com" && git config --global user.name "Jhon Doe"

WORKDIR /app

ENTRYPOINT ["bash"]