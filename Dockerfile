FROM python:stretch

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt


RUN mkdir /app
WORKDIR /app
COPY main.py main.py

CMD ["gunicorn", "-b", ":8080", "main:APP"]
