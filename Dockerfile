# usar una imagen base de nodo
FROM tutum/hello-world

# set maintainer
LABEL maintainer "pruebamerol"

 RUN /bin/bash -c 'echo Pruebas'
