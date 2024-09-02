# Base image of the container, in this case it is python version 3.9
FROM python:3.9
# Setting the working directory of the container
WORKDIR /code
# Coppying the code to the container
COPY ./book_catalog /code
# Install the required packages
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt
# The run command, this command will execute everytime this container start up.
CMD ["uvicorn", "main:app", "--host", "0.0.0.0", "--port", "80"]
