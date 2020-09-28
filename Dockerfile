# Comments in Dockerfiles
FROM python:3.7

# Update and install dependencies
RUN apt-get update
RUN pip install flask

# Add code
ADD . /opt/webapp/

# Set the working directory
WORKDIR /opt/webapp

# Set environment variables
ENV FLASK_APP=app.py

# Expose the application's port
EXPOSE :$PORT

# Run the application
CMD ["flask", "run", "--host=0.0.0.0"]
