ARG PARENT_IMAGE=bajorekp/lfs:11.0-arm-chapter08
FROM ${PARENT_IMAGE}

# Adds script files
ADD 9* /lfs-commands/chapter09/
RUN chmod -R +x /lfs-commands

# Skips docker limitaion: those files are protected
RUN sed -i 's/ln -sfv/# ln -sfv/' /lfs-commands/chapter09/901-network
RUN sed -i 's/\/etc\/host/\/etc\/host.bak/' /lfs-commands/chapter09/901-network

# Installs Basic System Software
RUN bash /lfs-commands/chapter09/901-network
RUN bash /lfs-commands/chapter09/902-clock
RUN bash /lfs-commands/chapter09/903-console
RUN bash /lfs-commands/chapter09/904-locale
RUN bash /lfs-commands/chapter09/905-inputrc
RUN bash /lfs-commands/chapter09/906-etcshells
