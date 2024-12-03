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
    stage(‘Running Image’) {
      steps {
          sh "docker run -p 3000 -d vvilasor/node-webapp”
      }
    }
  }
}
