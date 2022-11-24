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
$ rails -v
```

### Realizamos la instalacion de un proyecto en Ruby on Rails
```
rails new app_name
```

### Para levantar el proyecto, con la opcion para indicar que se ejecute y este disponible en la maquina host
Con esto el proyecto estara en la ruta http://localhost:3000 de la maquina host
```
rails s -b 0.0.0.0
```
