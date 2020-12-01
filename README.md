# joomla-ansible

The project consist in a group of roles for fully automized deploy Joomla CMS with Ansible. The roles has been tested on Ubuntu 18.04 Amazon EC2 istances.

Directory trees:

galera_cluster
       ├handlers
       │  └── main.yml
       ├tasks
       |─ main.yml
       └─templates
        |── galera.cnf
        |── my.cnf
        |── mysql-logrotate.conf
           
       galera_node
       ├── handlers
       │   └── main.yml
       ├── README
       ├── tasks
       │   └── main.yml
       └── templates
           ├── galera.cnf
           └── my.cnf           
            
      joomla
      ├── handlers
      │   └── main.yml
      ├── tasks
      │   └── main.yml
      └── templates
           ├── configuration.php
           ├── joomla.conf
           ├── robots.txt
           └── send_log.sh
    
    
      mysql
         ├── handlers
         │   └── main.yml
         ├── tasks
         │   └── main.yml
         └── templates
            ├── my.cnf
            └── mysql-logrotate.conf      
    
     nginx
        ├── certs
        │   ├── joomla.csr
        │   ├── ssl-cert.crt
        │   └── ssl-cert.key
        ├── handlers
        │   └── main.yml
        ├── tasks
        │   └── main.yml
        └── templates
            ├── mime.types
            ├── nginx.conf.tpl
            ├── nginx-logrotate.conf
            └── ssl.conf
    
    
    nginx-lb
       ├── handlers
       │   └── main.yml
       ├── tasks
       │   └── main.yml
       └── templates
           ├── load_balancer.conf
           ├── mime.types
           ├── nginx.conf.tpl
           ├── nginx-logrotate.conf
           └── ssl.conf
        
    
    php
      ├── handlers
      │   └── main.yml
      ├── tasks
      │   └── main.yml
      └── templates
          ├── php7.2-fpm-logrotate.conf
          ├── php-fpm.conf
          ├── php.ini.hardened
          ├── php.ini.ori
          └── phpwebsite.conf
          
    upgrade
      └── tasks
          └── main.yml       
    
    vars
      ├── joomla_configuration.yml
      └── vars.yml


Roles:
- upgrade
- nginx
- nginx-lb
- mysql
- php
- joomla
- galera_cluste
- galera_node-



