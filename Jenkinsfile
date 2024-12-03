pipeline {
  agent { label 'linux-node' }
  stages {
    stage('git clone') {
      steps {
        git 'https://github.com/binskzir/node-webapp.git'
        sh 'cd node-webapp'
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
