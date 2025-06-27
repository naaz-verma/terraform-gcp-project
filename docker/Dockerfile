FROM jenkins/jenkins:lts

USER root

# Install dependencies
RUN apt-get update && \
    apt-get install -y wget unzip

# Install Terraform
ENV TERRAFORM_VERSION=1.6.6

RUN wget https://releases.hashicorp.com/terraform/${TERRAFORM_VERSION}/terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    unzip terraform_${TERRAFORM_VERSION}_linux_amd64.zip && \
    mv terraform /usr/local/bin/ && \
    terraform -version && \
    rm terraform_${TERRAFORM_VERSION}_linux_amd64.zip

USER jenkins
