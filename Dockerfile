FROM python:3.11

# Set the working directory
WORKDIR /app

# Copy the application files
COPY . .

# Install dependencies
RUN pip install --upgrade pip
RUN pip install -r requirements.txt

# Expose the necessary port (if your application runs on a specific port)
EXPOSE 5000

# Command to run your application
CMD ["python", "app.py"]
