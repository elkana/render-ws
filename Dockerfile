# generate docker scripts for spring boot using jdk17
FROM eclipse-temurin:17-jdk
MAINTAINER elkana
ADD mvnw .
ADD .mvn .mvn
ADD pom.xml .
ADD src src
RUN ./mvnw install -DskipTests
ENTRYPOINT ["java","-jar","target/render-ws-0.0.1-SNAPSHOT.jar"]