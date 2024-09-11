pipeline {
    agent any
    stages {
        stage('Clone') {
            steps {
                git 'https://github.com/Beulah124/Web_App.git'
            }
        }
        stage('Build') {
            steps {
                sh 'echo "Building Web App..."'
            }
        }
        stage('Test') {
            steps {
                sh 'echo "Running Tests..."'
            }
        }
        stage('Dockerize') {
            steps {
                script {
                    def image = docker.build('simple-web-app')
                    image.push('your-dockerhub-beulah124/simple-web-app')
                }
            }
        }
        stage('Deploy') {
            steps {
                sh 'echo "Deploying Web App..."'
            }
        }
    }
}
