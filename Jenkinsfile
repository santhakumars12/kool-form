pipeline {
    agent any
    
    environment {
        DOCKER_IMAGE = "kubesandy/kool-app"
        DOCKER_TAG = "latest"
    }
    
    stages {
        stage('Checkout') {
            steps {
                checkout scm
            }
        }
        
        stage('Build Docker Image') {
            steps {
                script {
                    sh "docker build -t ${DOCKER_IMAGE}:${DOCKER_TAG} ."
                }
            }
        }
        
        stage('Push Docker Image') {
            steps {
                script {
                    sh "docker login -u kubesandy -p Sandy*1220"
                    sh "docker push ${DOCKER_IMAGE}:${DOCKER_TAG}"
                }
            }
        }
    }
}
