FROM python:2
ENV PYTHONUNBUFFERED 1
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
add requirements.txt /usr/src/app
RUN pip install --no-cache-dir -r requirements.txt
RUN curl -O http://micropython.org/resources/firmware/esp8266-20171101-v1.9.3.bin
ADD . /usr/src/app
