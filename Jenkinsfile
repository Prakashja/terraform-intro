pipeline{
    agent any
    stages{
        stage('terraform plan'){
            steps{
                script{
                    sh '''
                    terraform -v
                    terraform init
                    terraform plan
                    '''
                }
            }
        }
    }
}
