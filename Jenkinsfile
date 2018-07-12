pipeline {
  triggers {
    cron '@midnight'
  }
  agent {
    dockerfile true
  }

  parameters {
    choice(choices: 'Trunk_All\nTrunk_DesignerAndServer', description: 'Engine to use for build', name: 'engineSource')
  }

  stages {
      stage('build') {
        steps {
          script {
            def workspace = pwd()
            try {
              maven cmd: "clean deploy -e -fae -Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine -Dsrc.job.name=${params.engineSource}"
            } catch (e) {
              currentBuild.result = 'UNSTABLE'
            }
          }
        }
        post {
          always {
            archiveArtifacts '**/target/*.iar'
            junit '**/target/surefire-reports/**/*.xml'
          }
        }
      }
  }
}
