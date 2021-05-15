pipeline{
    agent any
    stages{
        stage('terraform plan'){
            steps{
                script{
                    sh '''
                    ls -ltr
                    terraform init
                    terraform plan 
                    '''
                }
            }
        }
    }
}
