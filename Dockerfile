FROM continuumio/miniconda3:latest
ADD environment.yaml /tmp/environment.yaml
RUN apt update && apt install -y bash && chsh -s /bin/bash
# RUN conda init bash
# RUN /bin/bash -c "source /root/.bashrc"
RUN conda env create --file /tmp/environment.yaml
WORKDIR /root/project
COPY / .
SHELL ["conda", "run", "-n", "ml4t", "/bin/bash", "-c"]
ENTRYPOINT ["conda", "run", "--no-capture-output", "-n", "ml4t", "python"]
