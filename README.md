# docker-nginx-systemcall

# How to build container image
```
docker build --tag jihoons/docker-nginx-systemcall:latest .
```

# How to execute container
```
docker run -p 80:80 -p 443:443 jihoons/docker-nginx-systemcall:latest
```

# How to push container image to Docker Hub repo
```
docker push jihoons/docker-nginx-systemcall:latest
```

# References
- `Dockerfile` is from https://github.com/webdevops/Dockerfile/tree/master/docker/php-nginx/ubuntu-18.04
- `index.php` is from https://www.php.net/manual/en/function.system.php
- `cpuload.sh` is from https://github.com/ajurge/CPU_load
  - Usage: `./cpuload.sh [cpu load in percent] [duration in seconds]`
  - Usage: `./cpuload.sh 25 10`
