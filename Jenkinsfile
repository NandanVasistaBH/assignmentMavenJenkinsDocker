pipeline{
    agent any
    environment {
        PATH = "C:/Users/e039325/Downloads/apache-maven-3.9.8-bin/apache-maven-3.9.8/bin;${env.PATH}"
    }
    stages {
        stage('Clone') {
            steps {
                checkout([
                    $class: 'GitSCM',
                    branches: [[name: '*/main']],
                    userRemoteConfigs: [[url: 'https://github.com/NandanVasistaBH/mavenJenkinsDocker.git']]
                ])

            }
        }
        stage("maven"){
            steps{
                bat "mvn clean compile"
                bat "mvn clean test"
                bat "mvn clean package"
                bat "mvn install"
            }
        }
        stage("Build Docker image"){
            script{
                bat "docker build -t assignment-maven"
            }
        }
    }
}