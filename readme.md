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
