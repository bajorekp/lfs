ARG PARENT_IMAGE=bajorekp/lfs-11.0-arm-host
FROM ${PARENT_IMAGE}

# Add only script files to docker
ADD 4* /lfs-commands/chapter04/
RUN chmod -R +x /lfs-commands

RUN echo "Print root LFS: $LFS"

# Executes book scripts
RUN bash /lfs-commands/chapter04/401-creatingminlayout
RUN bash /lfs-commands/chapter04/402-addinguser
USER lfs
RUN bash /lfs-commands/chapter04/403-settingenvironment
