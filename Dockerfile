FROM python:3.12

ENV APP_HOME /

WORKDIR ${APP_HOME}

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

ENTRYPOINT [ "python", "main.py" ]