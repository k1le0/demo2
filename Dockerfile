FROM openjdk:8-jdk-alpine
ENV TZ=Asia/Shanghai
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
ADD ./run.sh /
COPY ./target/demo2-0.0.1-SNAPSHOT.jar app.jar
ENTRYPOINT [ "sh", "-c", "/run.sh" ]
