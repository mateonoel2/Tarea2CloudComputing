# Tarea2CloudComputing

Para correr el programa solo es necesario ejecutar los siguiente dos comandos en la terminal de la carpeta principal.

```
docker build -t spark-wordcount:1.5.2 .

docker run -v "$(pwd)/input:/input" -v "$(pwd)/output:/output" spark-wordcount:1.5.2
```

video de demostración: https://youtu.be/NDnpwfKB-aI
