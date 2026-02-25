# FROM eclipse-temurin:17-jdk
# WORKDIR /app
# COPY . .
# RUN ./mvnw package || mvn package
# CMD ["java","-jar","target/chatserver-1.0.jar"]
#
#FROM maven:3.9.9-eclipse-temurin-17

#WORKDIR /app
#COPY . .

#RUN mvn clean package

#CMD ["java","-jar","target/chatserver-1.0.jar"]

#FROM maven:3.9.9-eclipse-temurin-17

#WORKDIR /app
COPY . .

#RUN mvn clean package -DskipTests

#CMD ["java","-jar","target/chatserver-1.0.jar"]FROM maven:3.9.9-eclipse-temurin-17

#WORKDIR /app
###COPY . .

#RUN mvn clean package -DskipTests

#CMD ["java","-jar","target/chatserver-1.0.jar"]

FROM maven:3.9.9-eclipse-temurin-17

WORKDIR /app
COPY . .

RUN mvn clean package -DskipTests

CMD ["java","-jar","target/chatserver-1.0.jar"]
