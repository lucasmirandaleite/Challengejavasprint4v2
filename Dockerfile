# Build Stage
FROM maven:3.8.6-openjdk-17 AS build
WORKDIR /app
COPY ChallengeJavaSprint4/pom.xml .
COPY ChallengeJavaSprint4/src ./src
RUN mvn clean package -DskipTests

# Run Stage
FROM openjdk:17-jdk-slim
WORKDIR /app
COPY --from=build /app/target/project-sprint4-1.0.0.jar app.jar
EXPOSE 8080
ENTRYPOINT ["java", "-Dspring.profiles.active=prod", "-jar", "app.jar"]
