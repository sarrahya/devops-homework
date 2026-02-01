FROM python:3.10-slim

WORKDIR /myapp

COPY requirements.txt .

RUN pip install --no-cache-dir -r requirements.txt

COPY myapp.py .

EXPOSE 5000

CMD ["python", "myapp.py"]
