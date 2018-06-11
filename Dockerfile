# usar una imagen base de nodo
FROM ubuntu

# set maintainer
LABEL maintainer "pruebamerol"

 RUN /bin/bash -c 'echo Pruebas'
 ENV Var1="prueba de variable"
