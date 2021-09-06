pipeline {
    agent any

    options {}

    tools {nodejs "node"}

    environment {}

    stages {
        stage{
            git 'https://github.com/PrashanthGanta/UPSTAC-Microservices-Frontend.git'
        }
        stage('Build') {
            steps{
                echo "installing NPM Packages"
                sh "npm install"
            }
            steps{
                echo"NPM Update"
                sh "npm update"
            }
            steps{
                echo "installing NPM Packages"
                sh "npm audit fix"
            }
        }
        stage('Test'){
             steps{
                echo "Run unit tests"
                sh "npm run test"
            }
        }

        stage('Build Docker Image') {
            echo "Build Docker Image"
        }

        stage('Push Image to DockerHub') {
            sh "Push Image to DockerHub"
        }

        stage('Deploy in ECS') {
            sh "Deploy in ECS"
        }
    }

    post {}
}