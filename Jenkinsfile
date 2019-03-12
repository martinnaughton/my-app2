pipeline {
    agent {
       docker {
         image 'maven:3-alpine'
       }
    }
    stages {
        stage('Build') {
            steps {
                sh 'mvn clean install'
                sh 'ls -l'
            }
        }
        stage('Test') {
            steps {
                sh 'ls -l'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
            }
        }
    }
}
