# How to run:

1. Create network ```docker network create nginx-proxy```
2. Run ``` docker compose up -d ```

```
server {
    listen 80;
    listen [::]:80;
    server_name sillyroach.com;
    
    location ~ /.well-known/acme-challenge {
        allow all;
        root /tmp/acme_challenge;
    }
}
```

```
server {
    listen 80;
    listen [::]:80;
    server_name test.leangaurav.dev;
    location / {
        return 301 https://$host$request_uri;
    }
    location ~ /.well-known/acme-challenge {
        allow all;
        root /tmp/acme_challenge;
    }
}
server {
    listen 443 ssl;
    listen [::]:443 ssl http2;
    server_name test.leangaurav.dev;
    ssl_certificate /etc/letsencrypt/live/test.leangaurav.dev/fullchain.pem;
    ssl_certificate_key /etc/letsencrypt/live/test.leangaurav.dev/privkey.pem;
}
```







# References
- https://leangaurav.medium.com/simplest-https-setup-nginx-reverse-proxy-letsencrypt-ssl-certificate-aws-cloud-docker-4b74569b3c61
- https://github.com/sebastian13/docker-compose-nginx-proxy
