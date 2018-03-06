from ubuntu:16.04

RUN mkdir -p /app/data
RUN mkdir -p /app/results
ADD ./* /app/
VOLUME ["/app/data/", "/app/results/"]
RUN apt-get update && apt-get upgrade -y
RUN apt-get install python3 python3-pip wget libgtk2.0-dev python3-tk -y
# RUN pip3 install -r /app/requirements.txt
RUN pip3 install numpy h5py opencv-python Pillow matplotlib scipy pygame wget
WORKDIR /app/
CMD ["python3", "gen.py"]