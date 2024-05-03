pipeline {
  agent none
  environment {
    // def dockerHome = tool 'mydocker'
    // PATH = "${dockerHome}:${env.PATH}"
  }  
  stages {
    stage('Hello') {
      steps {
        echo 'Hello world'
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
