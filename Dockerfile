FROM python:3.9-slim-buster
WORKDIR /app
COPY ./requirements.txt /app
RUN pip install -r requirements.txt
COPY . .
ENV FLASK_APP=app.py

EXPOSE 5000
CMD ["gunicorn", "--config", "gunicorn-cfg.py", "app:app"]
