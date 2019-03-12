pipeline {
    agent {
       docker {
         image 'maven:3-alpine'
       }
    }
    stages {
        stage('Complile') {
            steps {
                sh 'mvn clean compile'
                sh 'ls -l'
            }
        }
        stage('Test') {
            steps {
                sh 'mvn package'
                sh 'ls -l'
            }
        }
        stage('Docker') {
            agent {
              docker {
                 image 'docker:latest'
              }
            }
            steps {
                sh 'docker build -t inJenkins .'
                sh 'ls -l'
            }
        }
        stage('Deploy') {
            steps {
                sh 'mvn install'
                sh 'ls -l'
            }
        }
    }
    post {
          success {
             archiveArtifacts(artifacts: '**/target/*.jar', allowEmptyArchive: true)   
           }
          failure {
             echo 'Build FAiled'
           }
     }
}
