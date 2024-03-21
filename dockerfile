# Use an official Python runtime as a parent image
FROM python:3.9-slim

# Set environment variables
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED 1

# Set the working directory in the container
WORKDIR /home/vansh/django/login_page

# Install dependencies
COPY requirements.txt /vansh/django/login_page
RUN /bin/sh -c pip install

# Copy the current directory contents into the container at /app
COPY . .

# Expose port 8000 to allow communication to/from server
EXPOSE 8000

# Run Django development server
CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
