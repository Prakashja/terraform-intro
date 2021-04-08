pipeline{
    agent 'slave1-node'
    
    stages{
        stage('terraform plan'){
            steps{
                script{
                    sh 'terraform plan'
                }
            }
        }
    }
}
