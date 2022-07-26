FROM python:3.8.13-slim-buster

WORKDIR /app

RUN apt-get -y update  && apt-get install -y \
  python3-dev \
  apt-utils \
  python-dev \
  python3-opencv \
  build-essential \
&& rm -rf /var/lib/apt/lists/*

RUN pip install --upgrade setuptools 
    
COPY requirements.txt .

RUN pip install -r requirements.txt

COPY . .

RUN mkdir -p ./models

ADD https://drive.google.com/file/d/1o2KsZ8Pc-45nCUCDmzq8MfUgEL_fdSvM/view?usp=sharing ./models

CMD gunicorn -w 3 -k uvicorn.workers.UvicornWorker app:app --bind 0.0.0.0:$PORT