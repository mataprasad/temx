FROM qaregistry.yatra.com/yatra-jdk:8u121
ENV APPBINARY hmo-ui-app/bin/hmo-ui-app
ENV CONFIGFILE hmo-ui-app/conf/config.yml
MAINTAINER Mata Prasad Chauhan
USER root
LABEL yatra-release=1.0.0-f65470a message=Doe app-type=midoffice product-name=hmo-ui-app
ADD distributions/hmo-ui-app-1.0.0.tar /data/yatra/run
RUN mv /data/yatra/run/hmo-ui-app-1.0.0 /data/yatra/run/hmo-ui-app
USER yatra
EXPOSE 8080
