FROM python:3.8-alpine3.16

WORKDIR /home/app

COPY . /home/app/

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python3", "main.py" ]