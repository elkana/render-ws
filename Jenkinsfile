pipeline {
  agent any
  environment {
    def dockerHome = tool 'mydocker'
    PATH = "${dockerHome}:${env.PATH}"
  }  
  stages {
    stage('Hello') {
      agent any
      steps {
        echo 'Hello world'
        sh '${env.PATH}'
        sh '$(which docker)'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build .'
      }
    }
  }
}
