pipeline {
  agent none
  stages {
    stage('Hello') {
      steps {
        echo 'Hello world'
      }
    }
    stage('Docker Build') {
      agent any
      steps {
        sh 'docker build -v $(which docker):/usr/bin/docker .'
      }
    }
  }
}
