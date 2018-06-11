pipeline{

		agent {
			dockerfile true
		}

	
 stage ('Crear imagen') {
        / * Esto construye la imagen real; sin�nimo de
         * Docker build en la l�nea de comando * /

        app = docker.build ("tutum/hello-world")
    }

    stage ('Imagen de prueba') {
        / * Idealmente, correr�amos un marco de prueba contra nuestra imagen.
         * Para este ejemplo, estamos usando un enfoque tipo Volkswagen ;-) * /

        app.inside {
            sh 'echo "Pruebas pasadas"'
        }
    }

    stage ('start') {
        / * Finalmente, empujaremos la imagen con dos etiquetas:
         * Primero, el n�mero de compilaci�n incremental de Jenkins
         * Segundo, la etiqueta 'm�s reciente'.
         * Empujar varias etiquetas es barato, ya que todas las capas se vuelven a usar. * /
        
        sh "docker run -d tutum/hello-world"
        }
    }


}
