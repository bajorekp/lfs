FROM ubuntu:20.04

# Installs required packages
RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  git \
  make \
  libxml2 \
  libxml2-utils \
  python3 \
  xsltproc \
  docbook-xsl \
  gcc \
  g++ \
  bison \
  gawk \
  m4 \
  texinfo
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
  wget
RUN ln -sf /bin/bash /bin/sh

# LFS system mount point
ENV LFS=/mnt/lfs
RUN mkdir -vp $LFS

# Add LFS envs
RUN echo "export LFS=$LFS" > /root/.bashrc


# Downloads sourcefiles
ADD wget-list.txt /root/wget-list.txt
RUN mkdir -vp $LFS/sources
RUN wget --input-file=/root/wget-list.txt --continue --directory-prefix=$LFS/sources

ADD md5sums.txt /root/md5sums.txt
RUN cp /root/md5sums.txt $LFS/sources/md5sums.txt
RUN cd $LFS/sources && md5sum -c md5sums.txt

# Prints Host System Requirements
ADD version-check.sh /root/version-check.sh
RUN bash /root/version-check.sh

CMD /bin/bash +h
