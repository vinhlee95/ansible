FROM ubuntu:focal

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update and install basic tools
RUN apt-get update && \
    apt-get upgrade -y && \
    apt-get install -y \
    software-properties-common \
    curl \
    git \
    build-essential && \
    apt-get clean autoclean && \
    apt-add-repository -y ppa:ansible/ansible && \
    apt-get autoremove --yes && \
    apt-get update && \
    apt-get install -y ansible

COPY . .

CMD ["sh", "-c", "ansible-playbook local.yaml --tags 'dev-tools' && exec bash"]