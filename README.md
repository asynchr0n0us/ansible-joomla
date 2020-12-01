# joomla-ansible

The project consist in a group of roles for fully automized deploy Joomla 3.9.23 CMS with Ansible. The roles has been tested on Ubuntu 18.04 Amazon EC2 istances and Ansible 2.9.2


Roles:
- Upgrade
- Nginx
- Nginx-lb
- Mysql
- Php
- Joomla
- Galera_cluster
- Galera_node


Upgrade

Upgrade all packages on the system, and prevent from install a new kernel version


Nginx

Install nginx webserver with SSL self signed certificates and logrotate conf for backup webserver logs and compress in a tar.gz file.


Nginx-lb

A simple load balancer that distribuite the requests on webservers with a defined load.


Mysql

Deploy a Mariadb mysql server, runs mysql_secure_installation and create a database for the webserver.


Php

Install php application.


Joomla

Permit to choose which from a global variable the Joomla version to deploy and make sha1sum for ensure that the package has not been manipulated. The role comprehend a simple bash script that read nginx conditional log with a 15 minutes scheduled cronjob. The script has been made for monitor type 400 http requests made on webserver, send a mail if reach the number of 10 or more requests and clean file. In order to send mail outside of webserver you need to have configured a SMTP server. 



Galera_cluster

Install the master node for Mariadb galera high availability cluster configured for work on EC2 LAN (handled with ec2 firewall) avoid the exposition to the internet.


Galera_nodes

Install Mariadb replication nodes.

