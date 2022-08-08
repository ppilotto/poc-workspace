// Sample Jenkinsfile for testing (Nlopez) using ssh and a minimal Agent Setup
// testing v3 new GitPluging
// Run on mywazi 

// Define some basic variables
def zAgent      = 'myWazi_Agent'
def myJenkinsID = 'ibmuser'             // My Jenkins ID that points to my Git USERNAME
def myApp       = 'poc-app'
def zAppBuild   = "/u/ibmuser/waziDBB/dbb-zappbuild/build.groovy"


pipeline {
    // point to the USS Agent and skip Git auto-checkout. 
    agent  { label zAgent }
    options { skipDefaultCheckout(true) }
    stages {
        stage('clone') {
            steps {
                println '** Init Step: Setting up a Git Env for ssh ' 
                script { sh "git -c http.sslVerify=false clone ${scm.getUserRemoteConfigs()[0].getUrl()}" }  
            }  
        }  
        
        stage('Build') {
            steps {
                  println  '** Building..'
                  sh "ls  "
                  sh "groovyz " + zAppBuild + " -w " + env.wkDir + " -a " + myApp + " -o dbb-logs -h " + env.USER + "poc-app/cobol/datbatch.cbl"
            }
        }

        stage('Test') {
            steps {
                  println  '** NOP - Testing..'
            }
        }
    }    
}
