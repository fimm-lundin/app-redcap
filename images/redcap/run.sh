#!/bin/bash

sed -ri -e "s/^upload_max_filesize.*/upload_max_filesize = ${PHP_UPLOAD_MAX_FILESIZE}/" \
    -e "s/^post_max_size.*/post_max_size = ${PHP_POST_MAX_SIZE}/" /etc/php5/apache2/php.ini

echo "=> Setting timezone"
sed -ri -e "s/^;?\s?date\.timezone.*/date\.timezone = ${PHP_TIMEZONE}/" /etc/php5/apache2/php.ini

echo "=> Setting max_input_vars"
sed -ri -e "s/^;?\s?max_input_vars.*/max_input_vars = ${PHP_MAX_INPUT_VARS}/" /etc/php5/apache2/php.ini

echo "=> Setting php sendmail to ssmtp"
sed -ri -e "s/^;?\s?sendmail_path.*/sendmail_path = \/usr\/sbin\/ssmtp -t/" /etc/php5/apache2/php.ini

echo "=> Configuring CRON"
crontab -l | { cat; echo "* * * * * php /var/www/html${PHP_REDCAP_FOLDER}cron.php > /dev/null 2>&1"; } | crontab -

echo "=> Starting Supervisor"
exec supervisord -n -c "/etc/supervisor/supervisord.conf"
