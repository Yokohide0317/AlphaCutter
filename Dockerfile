FROM --platform=linux/x86_64 condaforge/miniforge3:25.9.1-0

WORKDIR /app
COPY . /app

RUN apt-get update && apt-get install -y gcc && apt-get clean
RUN conda env create -f /app/environment.yml -n alphacutter

RUN echo "source activate alphacutter" > ~/.bashrc
ENV PATH /opt/conda/envs/alphacutter/bin:$PATH

WORKDIR /work
CMD ["bash"]
