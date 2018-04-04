# build image
docker build -t jenk .
# create a data container
docker run --name jenkins_data jenk echo "Jenkins Data Container"
# run Jenkins container
docker run -d --name jenkins -p 8080:8080 -- volumes-from jenkins-data -v /var/run/docker.sock:/var/run/docker.sock jenk
