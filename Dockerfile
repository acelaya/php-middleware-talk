FROM node:7.8
MAINTAINER Alejandro Celaya <alejandro@alejandrocelaya.com>

CMD cd /home/alejandro && \
    npm install && \
    npm start
