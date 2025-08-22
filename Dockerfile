# Use official Python image
FROM python:3.11-slim

# Set work directory
WORKDIR /app

# Copy requirements and install dependencies
COPY requirements.txt ./
RUN pip install --upgrade pip && pip install -r requirements.txt

# Copy project files
COPY . .

# Set environment variables (optional, for .env usage)
ENV PYTHONUNBUFFERED=1

# Default command
CMD ["python", "app.py"]
