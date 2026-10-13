#Buscar  en dockerhub si existe un disco de linux en especifico o busca un
#ambiente para el docker
FROM ubuntu:latest

#Argmento al sistema opperativo para que el GUI no cause problemas
ARG DEVIAN_FRONTEND=noninteractive

#Se instala python
# apt update
RUN apt-get update && \
    apt-get install -y \
    python3 python3-pip \
    git curl && \
    rm -rf /var/libapt/lists/*


WORKDIR /workspace

RUN git clone https://github.com/jeckstrad/SD2026.git

CMD [ "sleep", "infinity" ]

#CMD [ "python3", "RCDD_2026/main.py" ]
#CMD ["/bin/bash"]