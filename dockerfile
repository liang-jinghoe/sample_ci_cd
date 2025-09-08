# Use OpenJDK as the base image
# FROM eclipse-temurin:11-jre
FROM openjdk:8-jre-alpine

# Set working directory
WORKDIR /app

# Copy the compiled JAR file from build/libs
COPY build/libs/hello-world-java-V1.jar app.jar

# Run the Java application
# CMD ["java", "-jar", "app.jar"]
ENTRYPOINT ["java", "-jar", "app.jar"]
