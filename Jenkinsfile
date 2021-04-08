pipeline{
    agent {
        label 'slave1-node'
    }
    stages{
        stage('terraform plan'){
            steps{
                script{
                    sh '''
                    sudo yum update -y
                    sudo yum install unzip -y
                    sudo rm -rf *
                    sudo wget https://releases.hashicorp.com/terraform/0.14.10/terraform_0.14.10_linux_amd64.zip
                    sudo unzip terraform_0.14.10_linux_amd64.zip 
                    ls -ltr 
                    sudo mv terraform /usr/local/bin/
                    terraform -v
                    terraform plan
                    '''
                }
            }
        }
    }
}
