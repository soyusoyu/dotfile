FROM centos:centos7
MAINTAINER  soyusoyu

ENV ruby_ver="2.4.3"
ENV node_ver="v8.9.4"
ENV python2_ver="2.7.14"
ENV python3_ver="3.6.4"
ENV user_name="develop"

# Import the Centos-7 RPM GPG key to prevent warnings
RUN rpm --import http://mirror.centos.org/centos/RPM-GPG-KEY-CentOS-7
RUN rpm --import http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-7

COPY etc/yum.repos.d/neovim.repo /etc/yum.repos.d/neovim.repo

# system update
RUN yum -y update && yum clean all

# set locale
RUN yum reinstall -y glibc-common && yum clean all
RUN localedef -f UTF-8 -i ja_JP ja_JP.UTF-8
ENV LANG ja_JP.UTF-8
ENV LANGUAGE ja_JP:ja
ENV LC_ALL ja_JP.UTF-8
RUN unlink /etc/localtime
RUN ln -s /usr/share/zoneinfo/Japan /etc/localtime

# ===============================================================================================================
# BASE packages
# ===============================================================================================================
RUN yum --enablerepo=extras clean metadata
RUN yum -y install epel-release
RUN yum install -y zlib zlib-devel make gcc gcc-c++ openssl openssl-devel readline readline-devel sqlite-devel libyaml-devel pcre pcre-devel autoconf curl glibc-headers
RUN yum install -y openssh openssh-server
RUN yum install -y net-tools wget sudo
RUN yum install -y tar zip unzip bzip2 which tree
RUN yum install -y git
RUN yum install -y the_silver_searcher
RUN yum install -y neovim
RUN yum clean all

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

RUN anyenv init -
RUN anyenv install rbenv
ENV PATH $ANYENV_ENV/rbenv/bin:$ANYENV_ENV/rbenv/shims:$PATH
ENV RBENV_ROOT $ANYENV_ENV/rbenv
RUN rbenv install ${ruby_ver}
RUN rbenv global ${ruby_ver}
RUN rbenv rehash
RUN gem update --system; gem install --no-ri --no-rdoc rails;

# anyenv ndenv
RUN anyenv install ndenv
ENV PATH $ANYENV_ENV/ndenv/bin:$ANYENV_ENV/ndenv/shims:$PATH
ENV NDENV_ROOT $ANYENV_ENV/ndenv
RUN ndenv install ${node_ver}
RUN ndenv global ${node_ver}
RUN ndenv rehash


RUN anyenv install pyenv
ENV PATH $ANYENV_ENV/pyenv/bin:$ANYENV_ENV/pyenv/shims:$PATH
ENV PYENV_ROOT $ANYENV_ENV/pyenv
RUN pyenv install ${python2_ver}
RUN pyenv install ${python3_ver}
RUN pyenv global ${python3_ver}
RUN pyenv rehash
RUN pip3 install neovim;

# make workdir 
RUN mkdir -p /home/${user_name}/work

# EXPOSE 22
#
# USER root
# CMD ["/usr/sbin/sshd", "-D"]


