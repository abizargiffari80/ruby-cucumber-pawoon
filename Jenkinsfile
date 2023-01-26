pipeline {
    agent any

  stages {
    stage('Prepare') {
        steps {
            echo "Mulai jenkins"
            bat "dir"
            dir("Website") {
              bat "dir"
              bat "cucumber .\\features\\ambil_id_struk_dan_total.feature"
              }
            echo "Selesai"
             }
          }
      }
}