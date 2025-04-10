FROM python:3.9-slim

WORKDIR /app

# Copy requirements first
COPY app/requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the application code
COPY app/app.py .

EXPOSE 5000
CMD ["python", "app.py"]
