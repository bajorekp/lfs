ARG PARENT_IMAGE=bajorekp/lfs-11.0-arm-chapter10
FROM ${PARENT_IMAGE}

# Adds script files
ADD 11* /lfs-commands/chapter11/
RUN chmod -R +x /lfs-commands

# Sets make options to speed up the compilation
ARG CODENAME="bajorekp/lfs-11.0-arm"
ENV CODENAME=$CODENAME

# Installs Basic System Software
RUN bash /lfs-commands/chapter11/1101-end.sh
