ARG PARENT_IMAGE=bajorekp/lfs-11.0-arm-chapter05
FROM ${PARENT_IMAGE}

# Add only script files
USER root
ADD 6* /lfs-commands/chapter06/
RUN chmod -R +x /lfs-commands
USER lfs

# Sets make options to speed up the compilation
ARG MAKEFLAGS="-j8"
ENV MAKEFLAGS=$MAKEFLAGS

# Executes book scripts
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/601-m4
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/602-ncurses
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/603-bash
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/604-coreutils
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/605-diffutils
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/606-file
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/607-findutils
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/608-gawk
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/609-grep
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/610-gzip
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/611-make
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/612-patch
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/613-sed
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/614-tar
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/615-xz
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/616-binutils-pass2
RUN source $HOME/.bashrc && bash lfs-commands/chapter06/617-gcc-pass2
