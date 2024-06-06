FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ./target/article-service.jar app.jar

ENV MYSQL_HOST=unleashDb
ENV MYSQL_PORT=3306
ENV MYSQL_USER=user
ENV MYSQL_PASSWORD=MYSQL_ROOT_PASSWORD


ENTRYPOINT ["java","-jar","/app.jar"]