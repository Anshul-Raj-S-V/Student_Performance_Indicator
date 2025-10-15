FROM python:3.12-slim

WORKDIR /app
COPY . /app

# Upgrade pip, setuptools, wheel first
RUN pip install --upgrade pip setuptools wheel

# Then install requirements
RUN pip install -r requirements.txt

# Optional: install AWS CLI if needed
RUN apt update -y && apt install -y awscli
