pipeline {
   agent any
  stages {
      
     stage('Run gcloud version') {
        steps {
           sh 'gcloud --version'
        }
     }
      
     stage('compute VM create') {
        steps {
           sh 'gcloud compute instances create gcloud'
        }
     }
     stage('List computes') {
        steps {
           sh 'gcloud compute instances list'
        }
     }
  }
}
