FROM python:3.12-slim

RUN apt-get update && apt-get install -y gcc netcat && apt-get clean
WORKDIR /usr/src/app
COPY . .
RUN pip install -r requirements.txt 

EXPOSE 80
CMD ["python", "manage.py", "runserver", "0.0.0.0:80"]
