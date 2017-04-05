#
# prone projet Shared container with common tools
#
FROM ubuntu:16.04

#==================================================
LABEL version="0.1"
LABEL description="prone os and common tools"

#==================================================
MAINTAINER Jean-François Priour <jpriour@gmail.com>


#==================================================
# Global env variables
ENV DEBIAN_FRONTEND noninteractive
ENV LANG C.UTF-8

#==================================================
# Update the package repository
RUN apt-get update

#==================================================
# Install common tools
RUN apt-get install -y --no-install-recommends apt-utils \
												curl \
												git \
												zip \
												unzip \
												net-tools \
												supervisor \
												vim \
												less \
												rsyslog \
												iputils-ping \
												logrotate