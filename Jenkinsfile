pipeline {
  agent any
  // environment {
  //   def dockerHome = tool 'mydocker'
  //   PATH = "${dockerHome}:${env.PATH}"
  // }  
  tools {
    docker "mydocker"
  }
  stages {
    stage('Hello') {
      agent any
      steps {
        echo 'Hello world'
        // sh 'echo ${env.PATH}'
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
