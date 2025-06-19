# Use the official Python image as the base

FROM python:3.11

# Set the working directory inside the container

WORKDIR /app

# Copy only requirements file first for caching dependencies

COPY requirements.txt /app/

# Install dependencies

RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application to the container

COPY . /app/

# Expose the application port

EXPOSE 8000

# Set environment variables

ENV PYTHONUNBUFFERED=1

# Run migrations, create superuser (if needed), and start Django server
