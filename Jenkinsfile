pipeline{
    agent { node {label docker-agent}}

    stages{
        stage('Code checkout'){
            steps{
                checkout([$class: 'GitSCM', branches: [[name: '*/main'], [name: '*/dev']], extensions: [], userRemoteConfigs: [[credentialsId: 'Github', url: 'https://github.com/yeoV/fastapi-tutorial']]])
            }
        }
        
    

        stage('Build and Push Docker Image'){
            steps{
                script{
                    sh 'ls'
                    dockerImage = docker.build("fast-api:latest")

                    dockerImage.push()

                    sh 'docker rmi -f my-image:latest'
                }
            }
        }
    }
}
