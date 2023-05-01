# Tarea 2 Cloud Computing

Para correr el programa solo es necesario ejecutar los siguiente dos comandos en la terminal de la carpeta principal.

```
docker build -t spark-wordcount:1.5.2 .
```

```
docker run -v "$(pwd)/input:/input" -v "$(pwd)/output:/output" spark-wordcount:1.5.2
```

Video de demostración: https://youtu.be/NDnpwfKB-aI
Imagen docker: https://hub.docker.com/repository/docker/mateonoel2/spark-wordcount
