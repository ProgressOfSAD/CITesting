# Jenkins
jenkins env
### build image
$docker build -t jenk .
### create a data container
$docker run --name jenkins_data jenk echo "jenkins data container"
### run jenkins container
$docker run -d --name jenkins -p 8080:8080 --volumes-from jenkins_data -v /var/run/docker.sock:/var/run/docker.sock jenk
### username
admin
### get admin password
$docker exec jenkins cat /var/jenkins_home/secrets/initialAdminPassword

