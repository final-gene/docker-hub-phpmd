FROM php:7.3-cli-alpine3.9

LABEL maintainer="frank.giesecke@final-gene.de"

ENV PHPMD_VERSION=2.6.0

WORKDIR /opt

RUN apk add --no-cache bash=4.4.19-r1

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -LSs "https://github.com/phpmd/phpmd/archive/${PHPMD_VERSION}.tar.gz" | tar -xz

WORKDIR /opt/phpmd-"${PHPMD_VERSION}"

RUN curl -LSs http://getcomposer.org/installer | php \
    && COMPOSER_ALLOW_SUPERUSER=1 php composer.phar install --no-dev --optimize-autoloader \
    && rm composer.phar \
    && ln -s "$(realpath src/bin/phpmd)" /usr/local/bin/phpmd

COPY docker-entrypoint.sh /usr/local/bin/docker-entrypoint.sh

WORKDIR /app

ENTRYPOINT ["/usr/local/bin/docker-entrypoint.sh"]

CMD [""]