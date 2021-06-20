FROM python:latest
# ARG ACTION=ls

WORKDIR /app
COPY requirements.txt ./
RUN pip install -r requirements.txt
COPY router-utility.py /app
# COPY services.csv /app
ENTRYPOINT [ "python", "router-utility.py"]
