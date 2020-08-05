pipeline {
  agent any

  triggers {
    pollSCM '@hourly'
    cron '@midnight'
  }

  options {
    buildDiscarder(logRotator(numToKeepStr: '60', artifactNumToKeepStr: '2'))
  }

  parameters {
    string(
       name: 'engineListUrl',
       description: 'Engine to use for build',
       defaultValue: 'https://jenkins.ivyteam.io/job/ivy-core_product/job/master/lastSuccessfulBuild/'
    )
  }

  stages {
    stage('build') {
      steps {
        script {

          docker.build("jsonplaceholder", "./connectivity/jsonplaceholder").withRun('--network host') { c ->

            docker.image('axonivy/build-container:web-1.0').inside('--network host') {
              def workspace = pwd()
              def phase = env.BRANCH_NAME == 'master' ? 'deploy' : 'verify'
              maven cmd: "clean ${phase} -Dmaven.test.failure.ignore=true  " + 
                        "-Dengine.directory=${workspace}/html-dialog-demos/html-dialog-demos/target/ivyEngine " +
                        "-Divy.engine.version='(9.2.0,]' " +
                        "-Divy.engine.list.url=${params.engineListUrl} " + 
                        "-DaltDeploymentRepository=repo.axonivy.com::https://repo.axonivy.com/artifactory/libs-snapshot-local"
              checkVersions()
              archiveArtifacts '**/target/*.iar,**/target/*.zip'
              archiveArtifacts artifacts: '**/target/selenide/reports/**/*', allowEmptyArchive: true
              recordIssues tools: [eclipse()], unstableTotalAll: 1
              recordIssues tools: [mavenConsole()], unstableNewAll: 1, qualityGates: [[threshold: 1, type: 'NEW', unstable: true]]
              junit testDataPublishers: [[$class: 'StabilityTestDataPublisher']], testResults: '**/target/*-reports/**/*.xml'          
            }

          }

        }
      }
    }
    stage('check editorconfig') {
      steps {
        script {
          docker.image('mstruebing/editorconfig-checker').inside {
            sh 'ec -no-color'
          }
        }
      }
    }
  }
}
