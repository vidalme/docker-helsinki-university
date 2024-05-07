FROM amazoncorretto:8
WORKDIR /app
COPY . .
RUN ./mvnw package
CMD ["java", "-jar", "./target/docker-example-1.1.3.jar"]
