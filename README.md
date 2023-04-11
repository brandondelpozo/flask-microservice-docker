# flask-microservice-docker
## DOCKER SET UP
1. docker build -t flask-microservice-docker:1.0 .
2. docker run -p 5000:5000 --name flask-microservice-docker flask-microservice-docker:1.0
tutorial: https://dev.to/swarnimwalavalkar/build-and-deploy-a-rest-api-microservice-with-python-flask-and-docker-5c2d
common error "denied": https://stackoverflow.com/questions/48957195/how-to-fix-docker-got-permission-denied-issue