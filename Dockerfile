FROM maven:3.2-jdk-7
RUN apt-get update
RUN git clone https://github.com/naver/pinpoint.git
ENV JAVA_6_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV JAVA_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV JAVA_7_HOME=/usr/lib/jvm/java-7-openjdk-amd64
ENV JAVA_8_HOME=/usr/lib/jvm/java-7-openjdk-amd64
RUN mvn -f /pinpoint/pom.xml install -Dmaven.test.skip=true
EXPOSE 28080 28081 60000 60010 60020 9090 19888 9083 9994 9995 9996

