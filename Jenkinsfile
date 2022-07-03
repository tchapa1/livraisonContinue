pipeline
{
	agent any
	stages {
		stage('Pull') {
				steps{
					script{
						checkout([$class: 'GitSCM', branches: [[name: '*/master']], userRemoteConfigs: [[ credentialsId: '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', url: 'https://github.com/tchapa1/livraisonContinue.git']]])
						}
					}
				}

		stage('Build') {
				steps{
          script{
						sh "ansible-playbook Ansible/build.yml -i Ansible/inventory/host.yml"
						}
					}
				}
		stage('docker') {
				steps {
					script{
						sh "ansible-playbook Ansible/docker.yml -i Ansible/inventory/host.yml"
						}
					}

				}

		}
}
