FROM eclipse-temurin:17-jdk
WORKDIR /app
COPY . .
RUN ./mvnw package || mvn package
CMD ["java","-jar","target/chatserver-1.0.jar"]