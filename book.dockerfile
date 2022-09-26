FROM openjdk:11-jdk-slim
COPY target/book-1.0.jar book.jar
EXPOSE 8090
ENTRYPOINT ["java","-jar","/book.jar"]


# -------------------------------------
#   Before building a docker image,
#   build .jar file with this command
#   (You will need to install mvn first)
# -------------------------------------

# mvn clean package -DskipTests

# -------------------------------------
#    To run docker compose
# -------------------------------------
# docker-compose up -d
# docker-compose ps
# docker logs <container-name>
# docker-compose down
