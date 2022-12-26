# https://github.com/pixelfordinner/pixelcloud-docker-apps/tree/master/nginx-proxy
# https://github.com/nginx-proxy/acme-companion/blob/main/docs/Docker-Compose.md
docker network create "proxiednet"
docker-compose up -d