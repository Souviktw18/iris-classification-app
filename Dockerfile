# Use an official Python runtime as a parent image
FROM python:3.13-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Copy the templates directory
COPY templates /app/templates

# Install any needed packages
RUN pip install --no-cache-dir Flask numpy scikit-learn

# Make port 5000 available to the world outside this container
EXPOSE 5000

# Run app.py when the container launches
CMD ["python", "flask_app.py"]