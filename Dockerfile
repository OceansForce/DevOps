# Multi-stage Dockerfile: build with Maven, run on a lightweight JRE


# Copy pom and download dependencies first (cache)
#COPY pom.xml ./
#COPY src ./src

# Build the application (skip tests to speed up; change if you want tests in build)
#RUN mvn -B -DskipTests package

FROM eclipse-temurin:17-jre-jammy

# Copy the built jar from the build stage
COPY Nueva_carpeta/practica-cloud-java-2022-2023/target/practica-0.0.1-SNAPSHOT demo.jar .

EXPOSE 8082

ENTRYPOINT ["java","-jar","*.jar"]
