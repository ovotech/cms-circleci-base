FROM circleci/openjdk:8-jdk

# Install AWS CLI
RUN sudo apt install -y python-pip coreutils
RUN sudo pip install awscli

# TODO could install other stuff here to speed up deploys, e.g. Terraform.
# Having it already available on the image is faster than downloading it from a cache.
