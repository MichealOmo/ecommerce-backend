pipeline {
  agent any
  stages {
    stage("build") {
      steps {
        sh """
          docker-compose build
        """
      }
    }
    stage("remove-old") {
      steps {
        sh """
          docker-compose stop ecommerce-backend || true
        """
      }
    }
    stage("run") {
      steps {
        sh """
          docker-compose up --remove-orphans
        """
      }
    }

  }
}