FROM python:3.11.4-alpine

ENV PYTHONUNBUFFERED=1

WORKDIR /app

COPY requirements.txt requirements.txt 

RUN pip install --upgrade pip 

RUN pip install -r requirements.txt --no-cache-dir

COPY . .

EXPOSE 8000

RUN chmod +x ./entrypoint.sh
RUN chmod +x ./worker_entrypoint.sh

ENTRYPOINT [ "sh", "./entrypoint.sh" ]

