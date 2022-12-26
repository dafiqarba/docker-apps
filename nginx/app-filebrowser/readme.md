### How To

1. Edit docker-compose, user to ```0:0``` for root, you can check on your server by enter ```id``` on terminal
2. Create binded files manually: empty database and default setting
3. Run ```docker compose up -d```
4. On binded volume, run ```sudo chown 1000:1000 -R <dir-pointing-to-file>``` 
5. Stop the container
6. Create container with user ```1000:1000```


#### References
- Permission denied: https://github.com/hurlenko/filebrowser-docker/issues/8
- Default Settings: 
  - https://stackoverflow.com/questions/57465204/unable-to-open-a-docker-app-running-on-a-port
  - https://github.com/filebrowser/filebrowser/issues/400
  - https://github.com/filebrowser/filebrowser/issues/549
- Nginx headers
  - https://github.com/filebrowser/filebrowser/issues/400
  - https://github.com/filebrowser/filebrowser/issues/549
  - https://github.com/hurlenko/filebrowser-docker#docker-compose
- Compose
  - https://www.cnblogs.com/hbgs/p/16566639.html
  - https://docs.technotim.live/posts/meet-file-browser/
  - https://github.com/hurlenko/filebrowser-docker#docker-compose
- Health check on compose
  - https://www.reddit.com/r/selfhosted/comments/ya632d/permissions_issues_with_installing_filebrowser/
