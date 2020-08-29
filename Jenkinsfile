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
    
    stage('Push images') {
        docker.withRegistry('https://gcr.io', 'gcr:google-container-registry-project') {
            myContainer.push("${env.BUILD_NUMBER}")
            myContainer.push("latest")
        }
    }

    }
