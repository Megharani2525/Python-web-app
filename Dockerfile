FROM ubuntu:22.04
WORKDIR /opt
RUN apt update && apt install python3 -y && apt install python3-flask -y
COPY app/app.py .
EXPOSE 8080
CMD ["python3", "./app.py"]
