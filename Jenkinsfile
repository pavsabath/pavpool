node{


			 def app


	   stage('Clone repository') {
	        /* Let's make sure we have the repository cloned to our workspace */
	
	        checkout scm
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
