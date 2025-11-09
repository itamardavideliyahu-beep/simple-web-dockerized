# Use official lightweight Python image as base
FROM python:3.11-slim

# Set working directory inside the container
WORKDIR /app

# Copy dependency file first to leverage Docker layer caching
COPY requirements.txt .

# Install Python dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Copy application source code
COPY app ./app

# Configure Flask environment
ENV FLASK_APP=app.app \
    FLASK_RUN_HOST=0.0.0.0 \
    FLASK_RUN_PORT=5000 \
    PYTHONUNBUFFERED=1

# Expose application port
EXPOSE 5000

# Run the Flask development server
# For production use a WSGI server (e.g. gunicorn)
CMD ["flask", "run"]
