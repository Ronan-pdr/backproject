# syntax=docker/dockerfile:1

FROM python:3.8

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

ENV FLASK_APP=app:app

EXPOSE 5000
CMD ["flask", "run","--host=0.0.0.0","--port=5000"]
#CMD ["hypercorn", "api:app"]