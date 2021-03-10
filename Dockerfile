FROM pytorch/torchserve:latest
ENV PATH="/home/venv/bin:$PATH"
RUN pip install -U pip
