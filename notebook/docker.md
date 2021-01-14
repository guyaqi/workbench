# docker

Rebuild docker images

```sh
docker rmi ${image_name}
docker build -f ${dockerfile} -t ${image_name} .
```

Restart docker container

```sh
docker stop ${container_name}
docker rm ${container_name}
docker run -d -p ${bind}:80 --name ${container_name} ${image_name}
```