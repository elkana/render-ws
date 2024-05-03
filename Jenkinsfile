pipeline {
  // agent {
  //   dockerfile true 
  // }
  agent any
  stages {
      stage('Build') {
          steps {
              sh 'docker build . -t render-ws-app'
          }
      }
      stage('Run') {
          steps {
              sh 'docker run -d -p 8080:8080 render-ws-app'
          }
      }
  }  
  // stages {
  //   stage('Hello') {
  //     steps {
  //       echo 'Hello world'
  //     }
  //   }
  // }
}
