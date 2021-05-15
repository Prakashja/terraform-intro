pipeline{
    agent any
    stages{
        stage('terraform plan'){
            steps{
                script{
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'myaws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                    sh '''
                    ls -ltr
                    terraform init
                    terraform plan -no-color
                    '''
                 }
                }
            }
        }
    }
}
