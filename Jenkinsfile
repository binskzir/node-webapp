pipeline {
  agent { label 'linux-node' }
  stages {
    stage('Building Docker image') {
      steps {
        image = docker.build("vvilasor/node-webapp")
        sh "docker run -p 3000 -d vvilasor/node-webapp"
      }
    }
  }
}
