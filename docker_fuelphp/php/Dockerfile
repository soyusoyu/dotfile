FROM amazonlinux:2016.09-with-sources
# 2016.09.1.20161221-with-sources, 2016.09-with-sources (Dockerfile)
MAINTAINER soyusoyu

ENV ruby_ver="2.5.1"
ENV node_ver="v8.11.1"
ENV python27_ver="2.7.14"
ENV python26_ver="2.6.9"
ENV python3_ver="3.6.5"
ENV php5_ver="5.6.36"
ENV php7_ver="7.0.16"

ENV user_name="docer"


# neovim
ADD ./neovim.repo /etc/yum.repos.d/neovim.repo
RUN yum update -y
RUN yum erase php*
RUN yum clean all
RUN yum groups install -y Development\ tools
RUN yum install -y \
        util-linux \
        autoconf \
        automake \
        bison \
        bzip2 \
        cmake \
        curl \
        curl-devel \
        freetype \
        freetype-devel \
        gcc \
        gcc-c++ \
        git \
        libcurl-devel \
        libgcc \
        libicu-devel \
        libjpeg-turbo \
        libjpeg-turbo-devel \
        libmcrypt \
        libmcrypt-devel \
        libpng \
        libpng-devel \
        libtidy \
        libtidy-devel \
        libxml2 \
        libxml2-devel \
        libxslt \
        libxslt-devel \
        ncurses-devel \
        openssh \
        openssh-server \
        openssl-devel \
        passwd \
        procps \
        re2c \
        readline \
        readline-devel \
        sudo \
        wget \
        zlib \
        zlib-devel \
        m4 \
        ruby \
        texinfo \
        pcre-devel \
        xz-devel  \
        libyaml-devel \
        pcre \
        autoconf \
        glibc-headers \
        net-tools \
        which \
        tree \
        tar \
        unzip \
        zip \
        bzip2 \
        bzip2-devel \
        sqlite \
        sqlite-devel \

RUN yum --enablerepo=amzn-preview install rust

RUN yum clean all

RUN echo "NETWORKING=yes" >/etc/sysconfig/network

WORKDIR /usr/local/src
RUN git clone https://github.com/ggreer/the_silver_searcher.git
WORKDIR /usr/local/src/the_silver_searcher
RUN ./build.sh
RUN make install

WORKDIR /usr/local/src
RUN wget http://download.icu-project.org/files/icu4c/57.1/icu4c-57_1-src.tgz
RUN tar xvzf icu4c-57_1-src.tgz
WORKDIR /usr/local/src/icu/source
RUN ./configure --prefix=/opt/icu
RUN make
RUN make install

# user
RUN useradd ${user_name}
RUN echo ${user_name} | passwd --stdin ${user_name}

USER ${user_name}
WORKDIR /home/${user_name}

# anyenv
RUN git clone https://github.com/riywo/anyenv .anyenv
ENV HOME /home/${user_name}
ENV ANYENV_HOME $HOME/.anyenv
ENV ANYENV_ENV $ANYENV_HOME/envs
RUN echo 'export PATH="${ANYENV_HOME}/bin:${PATH}"' >> .bash_profile
RUN echo 'eval "$(anyenv init -)"' >> .bash_profile
# anyenv update
RUN mkdir -p ${ANYENV_HOME}/plugins
RUN git clone https://github.com/znz/anyenv-update.git ${ANYENV_HOME}/plugins/anyenv-update

# anyenv rbenv
ENV PATH ${ANYENV_HOME}/bin:${PATH}
#RUN /bin/bash -l -c 'anyenv install rbenv'

RUN echo 'export PATH="$HOME/.linuxbrew/bin:$PATH"' >> .bash_profile
RUN echo 'export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"' >> .bash_profile
RUN echo 'export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"' >> .bash_profile
RUN echo 'export LD_LIBRARY_PATH="$HOME/.linuxbrew/lib:$LD_LIBRARY_PATH"' >> .bash_profile

RUN anyenv init -
RUN anyenv install rbenv
ENV PATH $ANYENV_ENV/rbenv/bin:$ANYENV_ENV/rbenv/shims:$PATH
ENV RBENV_ROOT $ANYENV_ENV/rbenv
RUN rbenv install ${ruby_ver}
RUN rbenv global ${ruby_ver}
RUN rbenv rehash
RUN gem update --system; gem install --no-ri --no-rdoc rails;

# RUN sh -c "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install.sh)"
# RUN test -d ~/.linuxbrew && PATH="$HOME/.linuxbrew/bin:$HOME/.linuxbrew/sbin:$PATH"
# RUN test -d /home/linuxbrew/.linuxbrew && PATH="/home/linuxbrew/.linuxbrew/bin:/home/linuxbrew/.linuxbrew/sbin:$PATH"
# RUN test -r ~/.bash_profile && echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.bash_profile
# RUN echo "export PATH='$(brew --prefix)/bin:$(brew --prefix)/sbin'":'"$PATH"' >>~/.profile

# anyenv ndenv
RUN anyenv install ndenv
ENV PATH $ANYENV_ENV/ndenv/bin:$ANYENV_ENV/ndenv/shims:$PATH
ENV NDENV_ROOT $ANYENV_ENV/ndenv
RUN ndenv install ${node_ver}
RUN ndenv global ${node_ver}
RUN ndenv rehash

# python
RUN anyenv install pyenv
ENV PATH $ANYENV_ENV/pyenv/bin:$ANYENV_ENV/pyenv/shims:$PATH
ENV PYENV_ROOT $ANYENV_ENV/pyenv
RUN pyenv install ${python26_ver}
RUN pyenv install ${python27_ver}
RUN pyenv install ${python3_ver}
RUN pyenv global ${python3_ver} ${python27_ver}
RUN pyenv rehash
RUN pip3 install neovim;

# php
RUN anyenv install phpenv
ENV PATH $ANYENV_ENV/phpenv/bin:$ANYENV_ENV/phpenv/shims:$PATH
ENV PHPENV_ROOT $ANYENV_ENV/phpenv
# composerは導入される
RUN phpenv install ${php5_ver}
RUN phpenv install ${php7_ver}
RUN phpenv global ${php5_ver}
RUN phpenv rehash

RUN cp $ANYENV_ENV/phpenv/versions/${php5_ver}/etc/php-fpm.conf.default $ANYENV_ENV/phpenv/versions/${php5_ver}/etc/php-fpm.conf


# make workdir 
RUN mkdir -p /home/${user_name}/work

WORKDIR /var/www

# RUN cd /var/www && \
#     curl https://get.fuelphp.com/oil | sh

# build
# docker build -t fuelphp/amazonlinux_php:1.0 .

# debug memo exit
# CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                        PORTS               NAMES
# CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                           PORTS               NAMES
# ad0f554bc213        85b02475938f        "/bin/sh -c ./build.…"   About an hour ago   Exited (127) About an hour ago                       hungry_euclid
# docker commit  hungry_euclid exited_debug
# docker images
# exited_debug                  latest                 32a0e5f6b98b        27 minutes ago      1.82GB
# docker run --rm -it exited_debug bash
# docker ps -a
# CONTAINER ID        IMAGE               COMMAND                  CREATED             STATUS                           PORTS               NAMES
# 75b6541dc481        32a0e5f6b98b        "/bin/sh -c 'make in…"   16 minutes ago      Exited (2) 16 minutes ago                            blissful_heisenberg
# delete CONTAINER
# docker rm 75b6541dc481
# docker rmi 32a0e5f6b98b

