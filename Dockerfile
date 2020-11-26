#set base image (host OS)
FROM python:3.6

#set the working directory in the container
WORKDIR /code

#copy the dependencies file to the working diretory
COPY src/requirements.txt .

#install dependencies
RUN pip install -r requirements.txt

#copy the content of the local src directory to the working directory
COPY src /code

EXPOSE 5000

#command to run on container start
CMD [ "python", ".run.py"]
