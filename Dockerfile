FROM continuumio/miniconda3:latest
ADD environment.yaml /tmp/environment.yaml
RUN apt update && apt install -y bash && chsh -s /bin/bash
RUN conda env create --file /tmp/environment.yaml
RUN conda init bash
# RUN conda activate ml4t
WORKDIR /root/project
COPY / .
SHELL ["conda", "run", "-n", "ml4t", "/bin/bash", "-c"]
ENTRYPOINT ["/opt/conda/bin/python3"]
