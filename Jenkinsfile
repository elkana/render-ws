pipeline {
  agent {
    dockerfile {
      filename 'Dockerfile'
      label 'budak'
    }
  }
  stages {
    stage('Hello') {
      steps {
        echo 'Hello world'
      }
    }
  }
}
