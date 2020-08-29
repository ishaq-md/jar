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
    
    stage('Push Image') {
docker.withRegistry('https://gcr.io', 'gcr:ishaqgcpproject') {
    app.push("${commit_id}")
    app.push("latest")
}
    
    }

    }
