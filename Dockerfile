FROM nvidia/cuda:12.1.0-base-ubuntu22.04 as base-container

RUN apt-get update && DEBIAN_FRONTEND=noninteractive \
    apt-get install -y --no-install-recommends \
    build-essential \
    ca-certificates \
    ccache \
    curl \
    libssl-dev \
    ca-certificates \
    make \
    git \
    python3-pip && \
    rm -rf /var/lib/apt/lists/*

RUN pip3 install -v --no-cache-dir -r requirements.txt

FROM base-container

ENTRYPOINT ["python3", "main.py"]