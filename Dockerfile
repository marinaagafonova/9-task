FROM python:3.8-alpine

WORKDIR /app

COPY requirements.txt .

RUN pip install --trusted-host pypi.python.org -r requirements.txt

COPY *.py .

EXPOSE 80

ENTRYPOINT ["python", "app.py"]