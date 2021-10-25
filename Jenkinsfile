pipeline{
    agent any

    stages{
        stage ('terraform init') {
            steps{
                script{
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                        PATH=/usr/local/bin/terraform
                        /usr/local/bin/terraform --version
                        t/usr/local/bin/terraform init
                        '''
                    }
                }
            }
        }
        stage("terraform plan") {
            steps{
                script{
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                        terraform plan -no-color
                        '''
                    }
                }
            }
        }        
        stage('approval') {
            options {
                timeout(time: 1, unit: 'HOURS')
            }
            steps {
                input 'approve the plan to proceed and apply'
            }
        }
        stage('terraform apply'){
            steps{
                script{
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'aws_credentials', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                        terraform apply --auto-approve
                        '''
                    }
                }
            }
        }
    }
}
