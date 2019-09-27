FROM java:latest

MAINTAINER hubble <niuganghappy@qq.com>

LABEL Description="This is a extend image base from java"

#设置时区
RUN /bin/cp /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && echo 'Asia/Shanghai' >/etc/timezone

COPY  mall-admin/target/mall-admin-1.0-SNAPSHOT.jar /usr/local/share/

WORKDIR /root

EXPOSE 8080
CMD ["/bin/sh", "-c", "java -jar /usr/local/share/mall-admin-1.0-SNAPSHOT.jar"]
