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
            sh 'echo "Tests passed"'
        }
    }
     

    }
