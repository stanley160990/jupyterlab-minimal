FROM ubuntu:22.04
RUN useradd -ms /bin/bash dbcooper
RUN echo 'root:toor' | chpasswd
RUN apt-get update
RUN apt install -y python3 python3-pip
RUN pip install jupyterlab
USER dbcooper
WORKDIR /home/dbcooper
CMD ["jupyter", "lab", "--port=8888", "--no-browser", "--ip=0.0.0.0"]
