from ubuntu:16.04

RUN mkdir -p /app/data
RUN mkdir -p /app/results
ADD ./* /app/
VOLUME ["/app/data/", "/app/results/"]
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 python-pip  libgtk2.0-dev python-tk -y
RUN pip3 install -r /app/requirements.txt
WORKDIR /app/
CMD ["python3", "gen.py"]