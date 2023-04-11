# Start with a base image
FROM python:3.10.0-alpine3.15

# Set the working directory
WORKDIR ${PROJECT_DIR}

# Copy project files to the working directory
COPY . .

# Upgrade pip and install requirements
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt

# Set environment variables
ENV PROJECT_DIR /usr/src/flask-microservice-docker
ENV FLASK_APP=api.py
ENV FLASK_ENV=development
ENV FLASK_DEBUG=True

# Expose port 5000
EXPOSE 5000

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]