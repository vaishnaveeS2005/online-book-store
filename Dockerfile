FROM python:3.10

WORKDIR /app

# Copy requirements first
COPY requirements.txt .

# Install dependencies
RUN pip install -r requirements.txt

# Copy all files
COPY . .

# Expose port
EXPOSE 3000

# Run application
CMD ["python", "app.py"]