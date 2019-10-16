pipeline {

    agent {
        label '!platform:true && image_ver:19.1.0 && pkgsrc_arch:x86_64 && pi:20151126T062538Z && jenkins_agent:2'
    }

    options {
        buildDiscarder(logRotator(numToKeepStr: '90'))
        timestamps()
    }

    stages {
        stage('check') {
            steps{
                sh('make check')
            }
        }
        stage('build image and upload') {
            steps {
                sh('''
set -o errexit
set -o pipefail

export ENGBLD_BITS_UPLOAD_IMGAPI=true
make print-BRANCH print-STAMP all release publish buildimage bits-upload''')
            }
        }
    }
}
