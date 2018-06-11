pipeline{


		agent  any {
			dockerfile true
			 def app
		}

	
 stage ('Crear imagen') {
        / * Esto construye la imagen real; sinónimo de
         * Docker build en la línea de comando * /

        app = docker.build ("tutum/hello-world")
    }

    stage ('Imagen de prueba') {
      

        app.inside {
            sh 'echo "Pruebas pasadas"'
        }
    }

    stage ('start') {
       
        
        sh "docker run -d tutum/hello-world"
        
    }


}
