pipeline{

		agent {
			dockerfile true
		}

	
 stage ('Crear imagen') {
        / * Esto construye la imagen real; sinónimo de
         * Docker build en la línea de comando * /

        app = docker.build ("tutum/hello-world")
    }

    stage ('Imagen de prueba') {
        / * Idealmente, correríamos un marco de prueba contra nuestra imagen.
         * Para este ejemplo, estamos usando un enfoque tipo Volkswagen ;-) * /

        app.inside {
            sh 'echo "Pruebas pasadas"'
        }
    }

    stage ('start') {
        / * Finalmente, empujaremos la imagen con dos etiquetas:
         * Primero, el número de compilación incremental de Jenkins
         * Segundo, la etiqueta 'más reciente'.
         * Empujar varias etiquetas es barato, ya que todas las capas se vuelven a usar. * /
        
        sh "docker run -d tutum/hello-world"
        }
    }


}
