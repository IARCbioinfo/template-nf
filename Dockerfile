# Set the base image to Debian
FROM debian:latest

# File Author / Maintainer
MAINTAINER **username** <**usermail**>

RUN apt-get clean && \
  apt-get update -y && \

  # Install dependences
  DEBIAN_FRONTEND=noninteractive apt-get install --no-install-recommends -y \
  git && \
  # add other dependences necessary

  # HERE INSTALL NECESSARY SOFTWARE
  # Example
  # wget **AddressToRepository** && \
  # tar **Archive** && \
  # cd **Directory** && \
  # make && \
  # make install && \

  # Remove unnecessary dependences
  DEBIAN_FRONTEND=noninteractive apt-get remove -y \
  git && \

  # Clean
  DEBIAN_FRONTEND=noninteractive apt-get autoremove -y && \
  apt-get clean
