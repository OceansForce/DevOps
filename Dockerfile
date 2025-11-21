# Multi-stage Dockerfile: build with Maven, run on a lightweight JRE


# Copy pom and download dependencies first (cache)
#COPY pom.xml ./
#COPY src ./src

# Build the application (skip tests to speed up; change if you want tests in build)
#RUN mvn -B -DskipTests package

FROM eclipse-temurin:21-jre-jammy

# Copy the built jar from the workspace into the image
# Source path is relative to the Docker build context; the workflow builds the jar before this step.
COPY Nueva_carpeta/demo/target/demo-0.0.1-SNAPSHOT.jar /app/demo.jar

WORKDIR /app
EXPOSE 8082
ENTRYPOINT ["java", "-jar", "/app/demo.jar"]
