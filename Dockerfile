FROM python:3.11-slim
# Not pinning versions - using latest available on each build
# hadolint ignore=DL3008
RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
  && rm -rf /var/lib/apt/lists/*
RUN pip install --no-cache-dir "platformio==6.1.19"
WORKDIR /workspace
