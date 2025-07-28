# FROM python:3.9-slim

# WORKDIR /app

# # Copy local code and wheels
# COPY . /app

# # Install dependencies from local directory
# RUN pip install --no-index --find-links=wheelhouse -r requirements.txt

# CMD ["python", "app/main.py"]

# Use Python base image
# FROM python:3.10-slim

# # Set working directory
# WORKDIR /app

# # Copy project files
# COPY requirements.txt .
# COPY app/ ./app/

# # Install dependencies
# RUN pip install --upgrade pip && \
#     pip install -r requirements.txt

# # Default command to run the script
# CMD ["python", "app/main.py"]

# # Use an official Python image
# FROM python:3.9

# # Set working directory
# WORKDIR /app

# # Copy requirements and install
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy application files
# COPY app ./app

# # Set working directory to app
# WORKDIR /app

# # Run main.py on container start
# CMD ["python", "main.py"]

# Use full Python image
# FROM python:3.9

# # Set working directory
# WORKDIR /app

# # Install dependencies required by Pillow and pdfplumber
# RUN apt-get update && apt-get install -y \
#     build-essential \
#     libjpeg-dev \
#     poppler-utils \
#     && rm -rf /var/lib/apt/lists/*

# # Copy requirements and install Python packages
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# # Copy application code
# COPY app ./app
# WORKDIR /app

# # Run main.py when container starts
# CMD ["python", "main.py"]


# FROM python:3.9

# WORKDIR /app
# COPY requirements.txt .
# RUN pip install --no-cache-dir -r requirements.txt

# COPY . .

# CMD ["python", "main.py"]

# Use a lightweight official Python image
FROM python:3.10-slim

# Set working directory inside container
WORKDIR /app

# Copy the app directory and requirements
COPY ./app /app
COPY requirements.txt /app/requirements.txt

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Ensure the output directory exists
RUN mkdir -p /app/output

# Set the default command to run the script
CMD ["python", "main.py"]