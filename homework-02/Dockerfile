FROM python:3.12-alpine3.20 AS builder

RUN apk add --no-cache build-base libpq-dev

WORKDIR /app

COPY requirements.txt .

RUN pip install --prefix=/install -r requirements.txt

FROM python:3.12-alpine3.20

RUN apk add --no-cache libpq

WORKDIR /app

COPY . .

COPY --from=builder /install /usr/local

EXPOSE 8000

CMD ["python", "main.py"]
