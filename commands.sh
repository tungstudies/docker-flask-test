#-----------------------------
# PYTHON VIRTUAL ENV COMMANDS
#-----------------------------

# create a virtual environment
python3 -m venv env

# activate the virtual environment
source env/bin/activate

# list packages
pip3 list

# create requirements.txt from pip list
pip3 freeze > requirements.txt

# install packages from requirements.txt file
pip3 install -r requirements.txt

# run flask app
python3 app.py

# deactivate
deactivate


#-----------------
# DOCKER COMMANDS
#-----------------
# build docker image named "docker-flask-test" (tag (-t))
# aka: docker build --tag docker-flask-test:1.0 ./
docker build -t docker-flask-test ./

# list docker images
docker image ls

### To delete docker image (add `-f` flag to force delete)
docker image rm 

### One liner to delete all of Docker images:
docker image rm $(docker images -a -q)

# run a docker image:

# --publish (-p): asks Docker to forward traffic incoming on the host’s port 5000 to the container’s port 5000
# --detach (-d): asks Docker to run this container in the background.
# --name (-n): specifies a name with which you can refer to your container in subsequent commands, in this case tungdeptrai
docker run -p 5000:5000 -d --name tungdeptrai docker-flask-test

# stop a running docker
docker stop docker-flask-test

# start a docker image
docker start tungdeptrai
docker rm tungdeptrai

# remove a container

# list all running Docker containers
docker ps

# To list all containers, both running and stopped, add `–a` :
docker ps –a



