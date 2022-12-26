# How to run:

1. Create network ```docker network create nginx-proxy```
2. Run ``` docker compose up --build nginx-reverse ```
3. Open 2nd terminal and run ```docker compose -f docker-compose-le.yaml up --build certbot```
4. Container on step 3 will be automatically closed.
5. Stop container on step 2
6. Replace files on default.conf with final.conf
7. Run ```docker compose up --build -d nginx-reverse```
8. Install app as you like
9. Update default.conf and restart 

### Helpers
#### get local ip of running container
docker inspect -f '{{range.NetworkSettings.Networks}}{{.IPAddress}}{{end}}' <container-name>

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
