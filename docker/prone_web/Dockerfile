#
# prone Apache webserver container 
#
FROM prone/prone_os

#==================================================
LABEL version="0.1"
LABEL description="prone webserver"

#==================================================
MAINTAINER Jean-François Priour <jpriour@gmail.com>

#==================================================
# Avoid ERROR: invoke-rc.d: policy-rc.d denied execution of start.
RUN sed -i "s/^exit 101$/exit 0/" /usr/sbin/policy-rc.d

#==================================================
# Install apache webserver
RUN apt-get install -y apache2

#==================================================
# Install PHP 7
RUN apt-get -y install php7.0 

#==================================================
# Install module PHP 7 for Apache
RUN apt-get -y install libapache2-mod-php7.0

#==================================================
# Entrypoint script
COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh

#==================================================
# Startup process
#ENTRYPOINT ["/usr/sbin/apache2ctl", "-D", "FOREGROUND"]
CMD ["/docker-entrypoint.sh"]