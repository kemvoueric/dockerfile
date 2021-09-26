pipeline {
    agent any
     parameters {


           choice(name: 'team', choices: ['devops', 'developer', 'tester'], description: 'Select your team')
           string(defaultValue: "", description: 'Enter your last_name', name: 'name')
           choice(name: 'app', choices: ['client', 'api', 'db'], description: 'Select an app')
           choice(name: 'registry', choices: ['nexus', 'dockerhub', 'nexusdockerhub'], description: 'Select a registry')
           string(defaultValue: "", description: 'supply a github repository', name: 'github')
           string(defaultValue: "", description: 'supply the branch for the docker image', name: 'branch')
           choice(name: 'repository', choices: ['klm', 'jnlp'], description: 'Select a repository')
           string(defaultValue: "", description: 'supply a tag ', name: 'tag')

    }

    stages {
        stage('clone') {
            steps {
                sh '''
                rm -rf ./*
                git clone -b $branch  $github
               
                '''
            }
        }


        stage('validate dockerfile') {
            steps {
                sh '''
                A=$(ls)
               cat $A/Dockerfile
                '''
            }
        }

         stage('Build') {
            steps {
                sh '''
                A=$(ls)
               cat $A/Dockerfile
                cd $A
               sudo  docker rmi -f ${team}_${name}_${app}_${repository}:${tag} || true 
               sudo docker build -t ${team}_${name}_${app}_${repository}:${tag} .
               echo $team
               echo $name
              echo  $app
              echo  $repository
              echo $tag

                '''
            }
        }


    }





}

