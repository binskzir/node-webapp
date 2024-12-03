pipeline {
  agent { label 'linux-node' }
  stages {
    stage('Cloning') {
      steps {
         git 'https://github.com/binskzir/node-webapp.git'
        }
      }
    stage('Building Docker image') {
      steps {
        script {
          image = docker.build("vvilasor/node-webapp")
          sh "docker run -p 3000 -d vvilasor/node-webapp"
        }
      }
    }
  }
}
