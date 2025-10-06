# Use a stable Java 17 base image
FROM openjdk:17-jdk-slim

# Set working directory inside the container
WORKDIR /app

# Copy the JAR file from Maven build output to the container
COPY target/*.jar app.jar

# Expose the app’s port
EXPOSE 8080

# Start the Spring Boot app
ENTRYPOINT ["java", "-jar", "/app/app.jar"]
