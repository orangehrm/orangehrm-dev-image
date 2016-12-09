FROM ubuntu:14.04

MAINTAINER orangehrm

# Our user in the container
USER root

# Update system
RUN apt-get update

# install apache and php
RUN apt-get install -y \
	apache2 \
	php5 libapache2-mod-php5 php5-mcrypt

# Tidy up
RUN apt-get -y autoremove && apt-get clean && apt-get autoclean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

# Enable apache mods.
RUN a2enmod  rewrite expires headers ssl



