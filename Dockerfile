FROM python:2.7
MAINTAINER Natasha Kelkar

COPY . /thermos
WORKDIR /thermos

RUN pip install -r requirements.txt

ENV THERMOS_ENV prod
CMD ["python", "manage.py", "runserver", "--host=0.0.0.0"]