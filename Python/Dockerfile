# please specify required dependencies needed for your docker container to function properly with 'RUN' command 
FROM python:3.12.0a4-bullseye
RUN mkdir /app
COPY getscript.py /app
WORKDIR /app
EXPOSE 8081
CMD ["python", "/app/getscript.py"]
