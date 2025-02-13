# Use latest Python image from DockerHub
FROM python:latest

# Set working directory inside container
WORKDIR /app

# Copy source code into working directory
COPY . /app

# Install Flask inside container
RUN pip install -r requirements.txt

# Expose container port
EXPOSE 8080

# Start Flask app
ENTRYPOINT ["python"]
CMD ["app.py"]
