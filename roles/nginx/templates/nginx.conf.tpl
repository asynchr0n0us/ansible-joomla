load_module modules/ngx_http_headers_more_filter_module.so;
user www-data;
worker_processes auto;
pid /var/run/nginx.pid;

events {
  worker_connections 768;
  # multi_accept on;
}

http {
  ##
  # Basic Settings
  ##
  sendfile on;
  tcp_nopush on;
  tcp_nodelay on;
  keepalive_timeout 65;
  types_hash_max_size 2048;
  server_tokens off;
  #more_clear_headers Server;
  #more_set_headers 'Server: Get My Header';
  # server_names_hash_bucket_size 64;
  # server_name_in_redirect off;
  include /etc/nginx/mime.types;
  default_type application/octet-stream;

  # Update charset_types due to updated mime.types
   charset_types text/xml text/plain text/vnd.wap.wml application/x-javascript application/rss+xml text/css application/javascript application/json;
  ##
  # SSL Settings
  ##
  ssl_protocols TLSv1 TLSv1.1 TLSv1.2; # Dropping SSLv3, ref: POODLE
  ssl_prefer_server_ciphers on;
  ##
  # Logging Settings
  ##
  access_log /var/log/nginx/access.log;
  error_log /var/log/nginx/error.log;

  map $status $should_log {
  400 1;
  401 1;
  403 1;
  404 1;
  406 1;
  409 1;
  413 1;
  415 1;
  429 1;
  default 0;
  }



  ##
  # Gzip Settings
  ##
        gzip on;
        gzip_disable "msie6";
        gzip_comp_level    5;
        gzip_min_length    256;
        gzip_proxied       any;
        gzip_vary          on;
        gzip_types
            application/atom+xml
            application/javascript
            application/json
            application/rss+xml
            application/vnd.ms-fontobject
            application/x-font-ttf
            application/x-web-app-manifest+json
            application/xhtml+xml
            application/xml
            font/opentype
            image/svg+xml
            image/x-icon
            text/css
            text/plain
            text/x-component;
  ##
  # Virtual Host Configs
  ##
  include /etc/nginx/conf.d/*.conf;
  include /etc/nginx/sites-enabled/*.conf;
}
