#!/bin/bash

sed -i "s@listen = /var/run/php5-fpm.sock@listen = 9000@" /etc/php5/fpm/pool.d/www.conf

echo "env[APP_SERVER_NAME] = ${APP_SERVER_NAME}" >> /etc/php5/fpm/pool.d/www.conf
echo "env[SYMFONY__REDIS_PORT] = ${REDIS_PORT_6379_TCP_PORT}" >> /etc/php5/fpm/pool.d/www.conf
echo "env[SYMFONY__REDIS_ADDRESS] = ${REDIS_PORT_6379_TCP_ADDR}" >> /etc/php5/fpm/pool.d/www.conf

#/bin/bash -l -c "php app/console redis:flushall --no-interaction"
#/bin/bash -l -c "php app/console giantswarm:temperature:add cologne 20"
#/bin/bash -l -c "php app/console giantswarm:temperature:add cologne 22"
#/bin/bash -l -c "php app/console giantswarm:temperature:add cologne 21"

echo "xdebug.max_nesting_level=100000" >> /etc/php5/fpm/conf.d/20-xdebug.ini
echo "xdebug.remote_enable=On" >> /etc/php5/fpm/conf.d/20-xdebug.ini
echo "xdebug.remote_connect_back=On" >> /etc/php5/fpm/conf.d/20-xdebug.ini

exec /usr/sbin/php5-fpm --nodaemonize