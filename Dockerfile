# https://docs.docker.com/language/java/develop/
FROM eclipse-temurin:17-jdk-jammy
WORKDIR /app

COPY .mvn/ .mvn
COPY mvnw pom.xml ./
RUN ./mvnw dependency:go-offline
COPY src ./src
CMD ["./mvnw", "spring-boot:run"]
# RUN ./mvnw install -DskipTests
# ENTRYPOINT ["java","-jar","target/render-ws-0.0.1-SNAPSHOT.jar"]