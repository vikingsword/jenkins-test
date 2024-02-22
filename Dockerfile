#这是基础镜像 java:17报错就改为如下的
FROM openjdk:8
VOLUME /tmp
#复制jar包到镜像中，并且将名字改成app.jar
ADD ./target/jenkins-test-0.0.1-SNAPSHOT.jar DemoApp.jar
#在容器启动的时候运行命令，来启动我们的项目（这其实就是一段Linux命令,该命令可以在服务启动时加一些参数）
ENTRYPOINT ["sh", "-c", "java -jar DemoApp.jar"]