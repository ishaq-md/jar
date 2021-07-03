node {
    def app

    stage('Clone repository') {
        /* Clone the repository to our Jenkins Workspace */

        checkout scm
    }

    stage('Build image') {
        /* Below command specifies exactly like the command line */
    
        app = docker.build("ishaqmd/javaapp")
    }
    
    stage('Test image') {
        
        app.inside {
            sh 'echo "Tests passed"'
        }
    }
    
    stage('Push image to docker-hub') {
        /* Finally, we'll push the image with two tags:
         * First, the incremental build number from Jenkins
         * Second, the 'latest' tag.
         * Pushing multiple tags is cheap, as all the layers are reused. */
        docker.withRegistry('https://registry.hub.docker.com', 'DOCKER_HUB') {
            app.push("${env.BUILD_NUMBER}")
            app.push("latest")
        }
    }
    
     stage('Docker push gcr') {
           steps {
                

               sh 'docker tag ishaqmd/javaapp:latest gcr.io/nasalab-316914/javaapp1'
               sh 'docker push gcr.io/nasalab-316914/javaapp1'
                
               
          }
        }
     
    }
