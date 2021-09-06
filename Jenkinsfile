pipeline {
    agent any

    stages {
        stage('Build') {
            steps {
                echo 'installing NPM Packages..'
                sh 'npm install'
            }
            steps{
                echo "NPM Update"
                sh 'npm update'
            }
            steps{
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
            }
        }
    }
}