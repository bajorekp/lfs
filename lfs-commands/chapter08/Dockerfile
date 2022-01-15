ARG PARENT_IMAGE=bajorekp/lfs:11.0-arm-chapter07
FROM ${PARENT_IMAGE}

# Adds rest of script files
ADD 8* /lfs-commands/chapter08/
RUN chmod -R +x /lfs-commands

# Sets make options to speed up the compilation
ARG MAKEFLAGS="-j8"
ENV MAKEFLAGS=$MAKEFLAGS

# Installs Basic System Software
RUN bash /lfs-commands/chapter08/801-man-pages
RUN bash /lfs-commands/chapter08/802-iana-etc
RUN bash /lfs-commands/chapter08/803-glibc
RUN bash /lfs-commands/chapter08/804-zlib
RUN bash /lfs-commands/chapter08/805-bzip2
RUN bash /lfs-commands/chapter08/806-xz
RUN bash /lfs-commands/chapter08/807-zstd
RUN bash /lfs-commands/chapter08/808-file
RUN bash /lfs-commands/chapter08/809-readline
RUN bash /lfs-commands/chapter08/810-m4
RUN bash /lfs-commands/chapter08/811-bc
RUN bash /lfs-commands/chapter08/812-flex
RUN bash /lfs-commands/chapter08/813-tcl
RUN bash /lfs-commands/chapter08/814-expect
RUN bash /lfs-commands/chapter08/815-dejagnu
RUN bash /lfs-commands/chapter08/816-binutils
RUN bash /lfs-commands/chapter08/817-gmp
RUN bash /lfs-commands/chapter08/818-mpfr
RUN bash /lfs-commands/chapter08/819-mpc
RUN bash /lfs-commands/chapter08/820-isl
RUN bash /lfs-commands/chapter08/821-attr
RUN bash /lfs-commands/chapter08/822-acl
RUN bash /lfs-commands/chapter08/823-libcap
RUN bash /lfs-commands/chapter08/824-shadow
RUN bash /lfs-commands/chapter08/825-gcc
RUN bash /lfs-commands/chapter08/826-pkg-config
RUN bash /lfs-commands/chapter08/827-ncurses
RUN bash /lfs-commands/chapter08/828-sed
RUN bash /lfs-commands/chapter08/829-psmisc
RUN bash /lfs-commands/chapter08/830-gettext
RUN bash /lfs-commands/chapter08/831-bison
RUN bash /lfs-commands/chapter08/832-grep
RUN bash /lfs-commands/chapter08/833-bash
RUN bash /lfs-commands/chapter08/834-libtool
RUN bash /lfs-commands/chapter08/835-gdbm
RUN bash /lfs-commands/chapter08/836-gperf
RUN bash /lfs-commands/chapter08/837-expat
RUN bash /lfs-commands/chapter08/838-inetutils
RUN bash /lfs-commands/chapter08/839-less
RUN bash /lfs-commands/chapter08/840-perl
RUN bash /lfs-commands/chapter08/841-xml-parser
RUN bash /lfs-commands/chapter08/842-intltool
RUN bash /lfs-commands/chapter08/843-autoconf
RUN bash /lfs-commands/chapter08/844-automake
RUN bash /lfs-commands/chapter08/845-kmod
RUN bash /lfs-commands/chapter08/846-libelf
RUN bash /lfs-commands/chapter08/847-libffi
RUN bash /lfs-commands/chapter08/848-openssl
RUN bash /lfs-commands/chapter08/849-Python
RUN bash /lfs-commands/chapter08/850-ninja
RUN bash /lfs-commands/chapter08/851-meson
RUN bash /lfs-commands/chapter08/852-coreutils
RUN bash /lfs-commands/chapter08/853-check
RUN bash /lfs-commands/chapter08/854-diffutils
RUN bash /lfs-commands/chapter08/855-gawk
RUN bash /lfs-commands/chapter08/856-findutils
RUN bash /lfs-commands/chapter08/857-groff
RUN bash /lfs-commands/chapter08/858-grub
RUN bash /lfs-commands/chapter08/859-gzip
RUN bash /lfs-commands/chapter08/860-iproute2
RUN bash /lfs-commands/chapter08/861-kbd
RUN bash /lfs-commands/chapter08/862-libpipeline
RUN bash /lfs-commands/chapter08/863-make
RUN bash /lfs-commands/chapter08/864-patch
RUN bash /lfs-commands/chapter08/865-tar
RUN bash /lfs-commands/chapter08/866-texinfo
RUN bash /lfs-commands/chapter08/867-vim
RUN bash /lfs-commands/chapter08/868-markupsafe
RUN bash /lfs-commands/chapter08/869-jinja2
RUN bash /lfs-commands/chapter08/870-systemd
RUN bash /lfs-commands/chapter08/871-dbus
RUN bash /lfs-commands/chapter08/872-man-db
RUN bash /lfs-commands/chapter08/873-procps-ng
RUN bash /lfs-commands/chapter08/874-util-linux
RUN bash /lfs-commands/chapter08/875-e2fsprogs
RUN bash /lfs-commands/chapter08/876-stripping
RUN bash /lfs-commands/chapter08/877-revisedchroot
