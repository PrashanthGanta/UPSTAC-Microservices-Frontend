pipeline {
    agent any

    options {}

    tools {nodejs "node"}

    environment {}

    stages {
        stage('Build') {
            steps{
                echo "installing NPM Packages"
                npm install
            }
            steps{
                echo "NPM Update"
                npm update
            }
            steps{
                echo "installing NPM Packages"
                npm audit fix
            }
        }
        stage('Test'){
             steps{
                echo "Run unit tests"
                npm run test
            }
        }

        stage('Build Docker Image') {
            echo "Build Docker Image"
        }

        stage('Push Image to DockerHub') {
            echo "Push Image to DockerHub"
        }

        stage('Deploy in ECS') {
            echo "Deploy in ECS"
        }
    }

    post {}
}