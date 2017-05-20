# Dockerized Logrotate for Raspberry Pi (rpi)

If you run this container you will have daily auto rotate all stdout logs from running containers.
All new containers will be automaticly include in log rotation.

This image is Raspberry Pi build of great image: blacklabelops/logrotate

Full docs and examples: https://hub.docker.com/r/blacklabelops/logrotate/

# Run example with docker-compose
```bash
vim docker-compose.yml
```
```yaml
logrotate:
  image: "marlic/rpi-logrotate:3.9.1-1"
  volumes:
    - /var/lib/docker/containers:/var/lib/docker/containers
  restart: always
  environment:
    - LOGS_DIRECTORIES=/var/lib/docker/containers
    - LOGROTATE_COPIES=365
    - LOGROTATE_COMPRESSION=compress
```
```bash
docker-compose up -d
```

# References

- origin repo: https://github.com/blacklabelops/logrotate
- base alpine for rpi: https://github.com/hypriot/rpi-alpine  
- addons for alpine: https://github.com/blacklabelops/baseimages
- go-cron: https://github.com/robfig/cron

