# syntax=docker/dockerfile:1

FROM python:3.8-slim-buster

WORKDIR /app

COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt

COPY . .

# arg1: input folder containing dataset
# arg2: output folder containing results
CMD [ "python3", "script.py", "-i", "/input", "-o", "/output"]
