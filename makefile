# run cli
run:
	npm start 

# build and run docker
up: 
	docker-compose up --build -d

# docker down
down: 
	docker-compose down

# push to repo
push:
	docker build -t calculator .
	docker tag calculator:latest dknathalage/calculator:latest
	docker push dknathalage/calculator:latest