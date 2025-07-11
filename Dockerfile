# Dockerfile
FROM python:3.9-slim

WORKDIR /app

# Copy the requirements file and install dependencies
COPY requirements.txt .

RUN pip install -r requirements.txt

# Copy the application code
COPY . .

# Expose port for web app (if necessary)
EXPOSE 5000

CMD ["python", "app.py"]
