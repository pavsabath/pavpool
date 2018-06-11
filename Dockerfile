# usar una imagen base de nodo
FROM nodo: 7-onbuild

# set maintainer
LABEL maintainer "pruebamerol"

# establecer un control de salud
HEALTHCHECK --interval = 5s \
            --timeout = 5s \
           CMD curl -f http://192.168.147.144:8000 || exit 1

# tell docker qué puerto exponer
EXPOSE 8000

 ENV  NAME World
 
