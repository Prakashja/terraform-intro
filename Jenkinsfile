pipeline{
    agent {
        label 'slave1-node'
    }
    stages{
        stage('terraform plan'){
            steps{
                script{
                    sh '''
                    terraform -v
                    terraform plan
                    '''
                }
            }
        }
    }
}
