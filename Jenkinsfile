pipeline {
    agent any
    stages {
        stage('Checkout') {
            steps {
                git branch: 'master', url: 'https://github.com/liang-jinghoe/sample_ci_cd.git'
            }
        }

        stage('Build') {
            steps {
                bat 'gradlew build'
            }
        }

        stage('Test') {
            steps {
                bat 'gradlew test'
            }
        }

        // stage('Deploy') {
        //     steps {
        //         powershell 'java -jar build/libs/hello-world-java-V1.jar'
        //     }
        // }

        stage('Deploy') {
            steps {
                powershell 'docker build -t hello-world-java .'
            }
        }

        stage('Production') {
            steps {
                powershell 'docker run hello-world-java'
            }
        }
    }

    post {
        always {
            echo 'Cleaning workspace'
            deleteDir()
        }

        success {
            echo 'Build succeeded'
        }

        failure {
            echo 'Build failed'
        }
    }
}