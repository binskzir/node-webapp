pipeline {
  agent { label 'linux-node' }
  stages {
    stage('Building Docker image') {
      steps {
        script {
          image = docker.build("vvilasor/node-webapp")
        }
      }
    }
  }
}
