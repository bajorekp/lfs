ARG PARENT_IMAGE=bajorekp/lfs-11.0-arm-chapter06
FROM ${PARENT_IMAGE} as HOST

# Execute everything as root
USER root

# Add only one require file to be executed on the host container
ADD 701-changingowner /lfs-commands/chapter07/
RUN chmod -R +x /lfs-commands

# Sets make options to speed up the compilation
ARG MAKEFLAGS="-j8"
ENV MAKEFLAGS=$MAKEFLAGS

# Executes book scripts
RUN source $HOME/.bashrc && bash /lfs-commands/chapter07/701-changingowner

# Creates files for out of Docker usage
# There is no need to mount the chroot enviroment
# RUN source $HOME/.bashrc && bash lfs-commands/chapter07/702-kernfs
RUN mkdir -pv $LFS/{dev,proc,sys,run}
RUN mknod -m 600 $LFS/dev/console c 5 1
RUN mknod -m 666 $LFS/dev/null c 1 3

# Starts LFS build from empty image
FROM scratch

# Copies Cross Compilied toolchain and tooling into LSF build 
COPY --from=HOST /mnt/lfs /
COPY --from=HOST /lfs-commands /lfs-commands

# Adds rest of script files
ADD 7* /lfs-commands/chapter07/
RUN chmod -R +x /lfs-commands

# Skips docker limitaion that `/etc/hosts` is read-only file
RUN sed -i 's/\/etc\/host/\/etc\/host.bak/' /lfs-commands/chapter07/704-createfiles

# Sets make options to speed up the compilation
ARG MAKEFLAGS="-j8"
ENV MAKEFLAGS=$MAKEFLAGS

# Executes rest of chapter 7 scripts
RUN bash /lfs-commands/chapter07/703-creatingdirs
RUN bash /lfs-commands/chapter07/704-createfiles
RUN bash /lfs-commands/chapter07/705-gcc-libstdc++-pass2
RUN bash /lfs-commands/chapter07/706-gettext
RUN bash /lfs-commands/chapter07/707-bison
RUN bash /lfs-commands/chapter07/708-perl
RUN bash /lfs-commands/chapter07/709-Python
RUN bash /lfs-commands/chapter07/710-texinfo
RUN bash /lfs-commands/chapter07/711-util-linux
RUN bash /lfs-commands/chapter07/712-cleanup
