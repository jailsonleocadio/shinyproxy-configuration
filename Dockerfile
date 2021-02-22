FROM openjdk:8-jre

RUN mkdir -p /opt/shinyproxy/

RUN wget https://www.shinyproxy.io/downloads/shinyproxy-2.3.1.jar -O /opt/shinyproxy/shinyproxy.jar

COPY application.yml /opt/shinyproxy/application.yml

RUN mkdir /opt/shinyproxy/templates

COPY templates/app.html /opt/shinyproxy/templates/app.html

WORKDIR /opt/shinyproxy/

CMD ["java", "-jar", "/opt/shinyproxy/shinyproxy.jar"]
