pipeline {
  triggers {
    pollSCM '@hourly'
    cron '@midnight'
  }
  agent {
    dockerfile true
  }
  
  options {
    buildDiscarder(logRotator(numToKeepStr: '60', artifactNumToKeepStr: '2'))
  }

  parameters {
    string(
       name: 'engineListUrl',
       description: 'Engine to use for build',
       defaultValue: 'http://zugprojenkins/job/ivy-core_product/job/master/lastSuccessfulBuild/'
    )
  }

  stages {
    stage('build') {
      steps {
        script {
          def workspace = pwd()
          maven cmd: "-P repo.axonivy.com clean deploy -e -Dmaven.test.failure.ignore=true  " + 
                     "-Dengine.directory=$workspace/HtmlDialogDemos/HtmlDialogDemos/target/ivyEngine " +
                     "-Divy.engine.list.url=${params.engineListUrl} "
        }
        archiveArtifacts '**/target/*.iar,**/target/*.zip'
        recordIssues tools: [eclipse()], unstableTotalAll: 1
        junit '**/target/surefire-reports/**/*.xml'          
      }
    }
    stage('cleanup') {
      steps {
        dir('HtmlDialogDemos/HtmlDialogsDemos/target/ivyEngine') {
          deleteDir()
        }
      }
    }
  }
}
