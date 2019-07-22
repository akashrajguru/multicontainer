###########################################
########Docker dev for Client app##########
###########################################

#Stop the running client_dev_app
sudo docker stop client_dev_app || true

#Remove the client dev container 
sudo docker rm client_dev_app || true

# Remove image to build new image with updated code
sudo docker rmi client:dev || true

#Build the client dev image
sudo docker build -f Dockerfile.dev . -t client:dev

#Run the newly build dev image
sudo docker run -d -p 3000:3000 --name client_dev_app client:dev

###########################################
########Docker dev for server app##########
###########################################

#Stop the running server_dev_app
sudo docker stop server_dev_app || true

#Remove the server dev container 
sudo docker rm server_dev_app || true

# Remove image to build new image with updated code
sudo docker rmi server:dev || true

#Build the server dev image
sudo docker build -f Dockerfile.dev . -t server:dev

#Run the newly build dev image
sudo docker run -d -p 3000:3000 --name server_dev_app server:dev

###########################################
########Docker dev for worker app##########
###########################################

#Stop the running worker_dev_app
sudo docker stop server_dev_app || true

#Remove the worker dev container 
sudo docker rm worker_dev_app || true

# Remove image to build new image with updated code
sudo docker rmi worker:dev || true

#Build the worker dev image
sudo docker build -f Dockerfile.dev . -t worker:dev

#Run the newly build dev image
sudo docker run -d -p 3000:3000 --name worker_dev_app worker:dev