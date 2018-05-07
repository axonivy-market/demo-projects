pipeline {
  triggers {
    cron '@midnight'
  }
  agent {
    dockerfile true
  }
  
  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          maven cmd: 'clean verify -e -Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine -Dsrc.job.name=Trunk_All -Dfirefox.portable.path=/opt/firefox-53.0 -Dch.ivyteam.ivy.server.configuration.development.cluster=true'
        }
      }
    }
  }
}