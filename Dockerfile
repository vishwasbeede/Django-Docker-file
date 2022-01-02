FROM ubuntu:latest
LABEL creator="2015-02-12"
RUN apt-get update && apt-get install python3 -y && apt-get install python3-venv -y;apt-get install python3-pip -y
RUN mkdir django-app;cd django-app;
#python3.5 -m venv django-env
COPY django-app.tar django-app/ 
WORKDIR django-app
#RUN apt-get install python3-venv
#RUN ["python3", "-m venv store_venv"]
#RUN  . store_venv/bin/activate
RUN tar -xvf django-app.tar .
RUN pip3 install -r veg_store/requirement.txt;
#RUN veg_store/manage.py runserver 0.0.0.0:8000
#CMD ["ls',"-ltr"]

#RUN tar -xvf djago-app.tar .
#RUN source vegetable_shop/Scripts/activate
#RUN python3.5 manage.py runserver 0.0.0.0 8080
EXPOSE 8000
ENTRYPOINT ["python3","veg_store/manage.py","runserver"]
#""sh","-c"] 
#CMD "python3 --version"
