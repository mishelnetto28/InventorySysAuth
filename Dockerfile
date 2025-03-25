FROM python:3.9-slim

WORKDIR /app

# Set environment variables for basic authentication
ENV USERNAME=my_secure_user
ENV PASSWORD=my_secure_password

# Install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copy the rest of the application code
COPY . .

# Run your Python application
CMD ["python", "app.py"]
