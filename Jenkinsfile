pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'installing NPM Packages..'
                sh 'npm install'
                echo "NPM Update"
                sh 'npm update'
                echo "installing NPM Packages"
                sh 'npm audit fix'
            }
        }
        stage('Test') {
            steps {
                echo 'Testing..'
                sh 'npm run test'
            }
        }
        stage('Deploy') {
            steps {
                echo 'Deploying....'
                sh "docker login -u gantaprashanth -p Prashanth@13041996"
                sh "docker build -t vote-ci-jenkins ."
                sh "docker tag vote-ci-jenkins gantaprashanth/vote-ci-jenkins"
                sh "docker push gantaprashanth/vote-ci-jenkins:latest"
            }
        }
    }
}