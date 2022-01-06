ARG PARENT_IMAGE=bajorekp/lfs-11.0-arm-chapter04
FROM ${PARENT_IMAGE}

# Add only script files to docker
USER root
ADD 5* /lfs-commands/chapter05/
RUN chmod -R +x /lfs-commands
USER lfs

# Executes book scripts
RUN source $HOME/.bashrc && bash /lfs-commands/chapter05/501-binutils-pass1
RUN source $HOME/.bashrc && bash /lfs-commands/chapter05/502-gcc-pass1
RUN source $HOME/.bashrc && bash /lfs-commands/chapter05/503-linux-headers
RUN source $HOME/.bashrc && bash /lfs-commands/chapter05/504-glibc
RUN source $HOME/.bashrc && bash /lfs-commands/chapter05/505-gcc-libstdc++-pass1
