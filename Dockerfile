# Set the base image to Debian
FROM debian:jessie

# File Author / Maintainer
MAINTAINER **username** <**usermail**>

RUN mkdir -p /var/cache/apt/archives/partial && \
	touch /var/cache/apt/archives/lock && \
	chmod 640 /var/cache/apt/archives/lock && \
	apt-key adv --keyserver keyserver.ubuntu.com --recv-keys F76221572C52609D && \
	apt-get clean && \
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
