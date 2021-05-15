pipeline{
    agent any
    stages{
        stage('terraform plan'){
            steps{
                script{
                    sh '''
                    ls -ltr
                    terraform -v
                    terraform init
                    terraform plan
                    '''
                }
            }
        }
    }
}
