# Build an data pipeline image for images processing

FROM python:3.8-slim

RUN apt-get update && \
    apt install -y gcc libsm6 libxext6 libxrender-dev libglib2.0-0 && \
    apt-get clean
  
RUN pip install opencv-python==4.2.0.32

COPY src /opt/program
WORKDIR /opt/program