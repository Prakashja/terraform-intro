pipeline{
    agent any

    stages{
        stage ('terraform init') {
            steps{
                script{
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'myaws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                        terraform --version
                        terraform init
                        '''
                    }
                }
            }
        }
        stage("terraform plan") {
            steps{
                script{
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'myaws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
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
                    withCredentials([aws(accessKeyVariable: 'AWS_ACCESS_KEY_ID', credentialsId: 'myaws', secretKeyVariable: 'AWS_SECRET_ACCESS_KEY')]) {
                        sh '''
                        terraform apply --auto-approve
                        '''
                    }
                }
            }
        }
    }
}
