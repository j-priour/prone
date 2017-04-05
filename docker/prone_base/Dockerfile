#
# prone My Sql database (mariadb)
#
FROM prone/prone_os

#==================================================
LABEL version="0.1"
LABEL description="prone data"

#==================================================
MAINTAINER Jean-François Priour <jpriour@gmail.com>

#==================================================
# install mariadb
RUN apt-get install -y mariadb-server


#==================================================
# mysql-secure-installation alternative
#RUN mysql --user=root <<'EOF'
#  UPDATE mysql.user SET Password=PASSWORD('pwd') WHERE User='root';
#  DELETE FROM mysql.user WHERE User='';
#  DELETE FROM mysql.user WHERE User='root' AND Host NOT IN ('localhost', '127.0.0.1', '::1');
#  DROP DATABASE IF EXISTS test;
#  DELETE FROM mysql.db WHERE Db='test' OR Db='test\\_%';
#  FLUSH PRIVILEGES;
#EOF

# Define default command.
CMD ["mysqld_safe"]

# Expose ports.
EXPOSE 3306