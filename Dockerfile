FROM php:5.6-apache

RUN apt-get update

RUN apt-get install -y gnupg gnupg2 gnupg1

# Add missing public keys (https://chrisjean.com/fix-apt-get-update-the-following-signatures-couldnt-be-verified-because-the-public-key-is-not-available/)
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 9D6D8F6BC857C906
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys AA8E81B4331F7F50
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7638D0442B90D010
RUN apt-key adv --keyserver keyserver.ubuntu.com --recv-keys 7638D0442B90D010

# Install mcrypt
# RUN apt-get update && apt-get install -y --force-yes php5-mcrypt
RUN apt-get install -y libmcrypt-dev
RUN docker-php-ext-install mcrypt

# RUN docker-php-ext-enable mcrypt
