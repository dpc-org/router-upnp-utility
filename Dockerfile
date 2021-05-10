FROM python:latest

WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY router-utility /app
COPY services.csv /app

CMD [ "python", "router-utility.py", "add"]
