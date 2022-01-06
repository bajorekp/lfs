ARG PARENT_IMAGE=bajorekp/lfs-11.0-arm-chapter09
FROM ${PARENT_IMAGE}

# Adds script files
ADD 10* /lfs-commands/chapter10/
RUN chmod -R +x /lfs-commands

# Sets make options to speed up the compilation
ARG MAKEFLAGS="-j8"
ENV MAKEFLAGS=$MAKEFLAGS

# Don't remove kernel sourcefiles to speedup later compilations
RUN sed -i 's/^rm -rf/# rm -rf/' /lfs-commands/chapter10/1002-kernel
# Fix kernel installation on ARM
RUN [ "$(uname -m)" == "aarch64" ] && sed -i 's+arch/x86/boot/bzImage+arch/arm64/boot/Image+' /lfs-commands/chapter10/1002-kernel || true
# Build default kernel configuration
RUN sed -i 's+.*kernel-config.*+make defconfig+' /lfs-commands/chapter10/1002-kernel

# # Installs Basic System Software
RUN bash /lfs-commands/chapter10/1001-fstab
RUN bash /lfs-commands/chapter10/1002-kernel
RUN mkdir -vp /boot/grub
RUN bash /lfs-commands/chapter10/1003-grub
