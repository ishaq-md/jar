node {
    def app

    stage('Clone repository') {
        /* Clone the repository to our Jenkins Workspace */

        checkout scm
    }

    stage('Build image') {
        /* Below command specifies exactly like the command line */
    
        app = docker.build("ishaq/javaapp")
    }
    
    stage('Test image') {
        
        app.inside {
            echo "Tests passed"
        }
    }
     
    stage("docker push") {
    docker.withRegistry('https://gcr.io', "gcr:credential-id") {
        Img.push("imageTag")
    }
}

    }
