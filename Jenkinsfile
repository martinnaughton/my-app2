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
        stage('Deploy') {
            steps {
                sh 'mvn install'
            }
        }
    }
}
