FROM maven:3.8.6-openjdk-11
RUN apt update
RUN apt install default-jdk -y
RUN apt install git -y
WORKDIR /javaapp
RUN cd /javaapp
RUN git clone https://github.com/shephertz/App42PaaS-Java-MySQL-Sample.git
RUN cd App42PaaS-Java-MySQL-Sample
COPY Config.properties /javaapp/App42PaaS-Java-MySQL-Sample/WebContent
WORKDIR /javaapp/App42PaaS-Java-MySQL-Sample
RUN mvn package