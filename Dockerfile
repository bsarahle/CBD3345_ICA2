# Use an official Python runtime as the base image
FROM python:3.9-slim

# Set the working directory in the container
WORKDIR /app

# Copy the requirements.txt file first to leverage Docker caching
COPY requirements.txt .

# Install any needed dependencies specified in requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Copy the entire application code into the container
COPY . .

# Define any environment variables (if necessary)
ENV ENVIRONMENT production

# Specify the command to run your application (replace with your actual command)
CMD ["python", "app.py"]
