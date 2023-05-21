#ABOUT this bash script
#CHModed it like this: 	chmod +x run.sh
#execute it doing this: ./run.sh
#have phun!


#Stops the currently runing container, if there is one
echo "Running: docker stop brobath-react"
docker stop brobath-react

#Deletes the current "brobath-test" docker container
echo "Running: docker container rm brobath-react"
docker container rm brobath-react

#To build the docker image:
#NOTE: you must be in the Dockerfile directory with tour terminal
echo "Running: docker build -t brobath_react ."
docker build -t brobath_react .

#To run naming it and on background:
echo "Running: docker run --name brobath-react -d --publish 5003:5003 brobath_react"
docker run --name brobath-react -d --publish 5003:5003 brobath_react

#Prints the status of the running containers after deploying this one!
echo "Running: docker ps"
docker ps
