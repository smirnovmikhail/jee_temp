pipeline {
    agent any
    tools { 
        maven 'M3'
        jdk 'jdk8'
    }
    stages {
        stage('SCM'){
            steps { 
                git branch: 'master', url: 'https://github.com/smirnovmikhail/jee_temp.git'
            }
        }
        stage ('Initialize') {
            steps {
                sh '''
                    echo "PATH = ${PATH}"
                    echo "M2_HOME = ${M2_HOME}"
                ''' 
            }
        }
        stage ('Build') {
        steps {
            withMaven(
                // Maven installation declared in the Jenkins "Global Tool Configuration"
                maven: 'M3',
            ) {
                // Run the maven build
                sh  "mvn clean install"
            } // withMaven will discover the generated Maven artifacts, JUnit Surefire & FailSafe & FindBugs reports...
        }
        }
    }
}
