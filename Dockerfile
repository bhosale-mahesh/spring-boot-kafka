# Build
FROM eclipse-temurin:21-jdk-ubi9-minimal AS build
ENV HOME=/usr/app
RUN mkdir -p $HOME
WORKDIR $HOME
ADD . $HOME
RUN --mount=type=cache,target=/root/.m2 ./mvnw -f pom.xml clean package

# Runtime
FROM eclipse-temurin:21-jre-ubi9-minimal
ENV HOME=/usr/app
WORKDIR $HOME
COPY --from=build /usr/app/target/*.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-jar", "app.jar"]