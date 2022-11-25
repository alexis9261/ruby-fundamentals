# Docker para Ruby on Rails

### docker
Descarga las imagenes que se encuentran en los servicios de docker compose
```
$ docker-compose pull
```

#### Levanta todos los servicios e imagenes necesarias para el contenedor
```
$ docker-compose up -d
```

### Ejecutamos para ver los contenedores corriendo, deberia solo ser este
Obtenemos el container ID
```
$ docker ps 
```

### Ejecutamos este comando para acceder a la terminal del contenedor
```
$ docker exec -it container_id bash
```

### Ya dentro del contenedor, verificamos que tenemos instalados ruby y Rails en el contenedor
```
$ ruby -v
```
