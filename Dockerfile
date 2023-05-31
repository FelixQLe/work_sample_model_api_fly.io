FROM python:3.10.9


# Set the working directory in the container to /app
WORKDIR /ws_app

# Add the current directory contents into the container at /app
ADD . /ws_app

# Install any needed packages specified in requirements.txt
RUN pip install --trusted-host pypi.python.org -r requirements.txt

# Make port 80 available to the world outside this container
EXPOSE 5000

# Run the command to start uWSGI
#CMD ["gunicorn", "model_API_app:ws_app", "-b", "0.0.0.0:5000"]
CMD ["python", "model_API_app.py"]