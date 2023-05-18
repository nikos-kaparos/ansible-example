FROM python:3.10.11-alpine3.18

WORKDIR /usr/data
#to install the requirements, frist shoud coppy the requirements to image file
COPY ./requirements.txt ./

RUN pip install -r requirements.txt

COPY ./myproject /usr/data/

EXPOSE 8000/tcp

CMD [ "python", "manage.py", "runserver", "0.0.0.0:8000" ]