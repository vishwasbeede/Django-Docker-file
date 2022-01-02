FROM ubuntu:16.04 
LABEL creator="2015-02-12"
RUN apt-get update && apt-get install python3.5 -y && apt-get install python3-venv
RUN mkdir django-app;cd django-app;python3.5 -m venv django-env
COPY veg_store/* 
EXPOSE 80

ENTRYPOINT ["sh","-c"] 
CMD "python3 --version"
