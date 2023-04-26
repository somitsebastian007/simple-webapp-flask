#BASE IMAGE
FROM ubuntu:20.04

#ADD DEPENDENCIES
RUN apt-get update
RUN apt-get install -y python3 
RUN apt-get install -y python3-pip
RUN pip3 install flask

#COPY APPLICATION FILE
COPY app.py /opt/

#RUN APP
ENTRYPOINT FLASK_APP=/opt/app.py flask run --host=0.0.0.0 --port=8080
