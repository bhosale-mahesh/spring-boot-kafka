## Run project 

Have docker installed in local, no need of Java, Maven and Kafka.

```bash
docker-compose up -d
```
```bash
curl -X POST localhost:8080/send?message=HelloWorld
```
Execute curl command to send message to Kafka and that will be pulled by consumer.
In application logs expected log is 'Consumed message: HelloWorld'

## Local setup
To work with Spring Boot locally + Kafka from docker

Execute this command to start Kafka
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
