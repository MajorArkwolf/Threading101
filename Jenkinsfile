pipeline {
    agent any
    stages {
        stage('Build') {
            steps {
                sh 'echo "Building..."'
                sh 'chmod +x build-bot/linux-build.sh'
                sh 'build-bot/linux-build.sh'
                archiveArtifacts artifacts: 'build/*', fingerprint: true
            }
        }
    }
}