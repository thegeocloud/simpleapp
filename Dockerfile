FROM python:slim

COPY requirements.txt /
RUN pip3 install -r /requirements.txt

COPY . /app
WORKDIR /app


CMD ["gunicorn", "--preload"]

ENTRYPOINT ["gunicorn", "-b", ":8080", "app:app"]