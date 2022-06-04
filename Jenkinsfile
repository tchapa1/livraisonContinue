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
						sh "ansible-playbook /home/tchapa/Bureau/myapp/myapp/Ansible/build.yml -i /home/tchapa/Bureau/myapp/myapp/Ansible/inventory/host.yml"
						}
					}
				}



		}
}
