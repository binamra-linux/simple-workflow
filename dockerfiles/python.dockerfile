FROM python:3.10.21-slim-trixie

WORKDIR /app

COPY src/requirements.txt /app

RUN pip install --no-cache-dir -r requirements.txt

COPY src/ /app

CMD ["python", "app.py"]