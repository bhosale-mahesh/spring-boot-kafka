## Run project 

Have docker installed in local, no need of Java, Maven and kafka.

```bash
docker-compose up -d
```
```bash
curl -X POST localhost:8080/send?message=HelloWorld
```
Execute curl command to send message to kafka and that will be pulled by consumer.
In application logs expected log is 'Consumed message: HelloWorld'

## Local setup
If want to work with Spring Boot locally + kafka from docker

Execute this command to start kafka
```bash
docker-compose up -d zookeeper kafka
```
Start this spring boot project locally and access the /send api like:
```bash
curl -X POST localhost:8080/send?message=HelloWorld
```
To stop and remove containers use below given command
```bash
docker-compose down
```
