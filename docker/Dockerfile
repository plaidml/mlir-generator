FROM ubuntu:22.04

ARG extra_vars

RUN echo "APT::Acquire::Retries \"5\";" | tee /etc/apt/apt.conf.d/80-retries

ENV UBUNTU=jammy

RUN DEBIAN_FRONTEND="noninteractive" TZ=Europe/London apt update && apt install sudo vim htop ninja-build python-is-python3 clang lld cmake sudo python3 python3-venv virtualenv git ocl-icd-opencl-dev dxvk vulkan-tools libvulkan-dev -y

CMD [ "/bin/bash" ]
