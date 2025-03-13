# Use an official Python runtime as the base image
FROM python:3.11-slim

# Set the working directory in the container
WORKDIR /app

# Copy the current directory contents into the container at /app
COPY . /app

# Install dependencies from requirements.txt
RUN pip install --no-cache-dir -r requirements.txt

# Expose port 7860 for Gradio's default port
EXPOSE 7860

# Run the Gradio app using Python
CMD ["python", "googlecollabaicode.py"]
