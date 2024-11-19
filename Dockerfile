# Use the official Python 3.11 image
FROM python:3.11-alpine

# Set the working directory
WORKDIR /app

# Copy the Python application files into the container
COPY serve.py /app/
COPY restaurant.json /app/
COPY requirements.txt /app/

# Install dependencies
RUN pip install --no-cache-dir -r requirements.txt

# Expose the port Flask will run on
EXPOSE 5005

# Command to run the Flask app
CMD ["python", "serve.py"]
