#BASE IMAGE
FROM ubuntu:20.04

#Set Enviornmnet Variable
ENV PORT_NUMBER=8080

#### ADD DEPENDENCIES ####
# Retrive latest packages
RUN apt-get update

# Install Python
RUN apt-get install -y python3 

# Install pip
RUN apt-get install -y python3-pip

# Install Flask # Flask is a micro web framework for building web applications in Python
RUN pip3 install flask

#COPY APPLICATION FILE
COPY app.py /opt/

#OPEN PORT 8080
EXPOSE ${PORT_NUMBER}

#RUN APP
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=${PORT_NUMBER}
