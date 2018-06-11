# usar una imagen base de nodo
DESDE nodo: 7-onbuild

# set maintainer
Mantenedor LABEL "miiro@getintodevops.com"

# establecer un control de salud
HEALTHCHECK --interval = 5s \
            --timeout = 5s \
            Curvas CMD -f http://192.168.229.130:8000 || salida 1

# tell docker qué puerto exponer
EXPONER 8000