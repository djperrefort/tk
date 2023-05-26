FROM rockylinux:8

RUN yum install -y \
    gcc-gfortran \
    python39 \
    python39-devel

RUN pip3 install numpy==1.23.5
RUN pip3 install ellc
COPY requirements.txt requirements.txt
RUN pip3 install -r requirements.txt
RUN pip3 install tkmatrix

RUN mkdir tkm
WORKDIR /tkm
ENTRYPOINT ["python3.9", "-m", "tkmatrix"]