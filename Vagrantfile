# -*- mode: ruby -*-
# vi: set ft=ruby :

# All Vagrant configuration is done below. The "2" in Vagrant.configure
# configures the configuration version (we support older styles for
# backwards compatibility). Please don't change it unless you know what
# you're doing.
Vagrant.configure(2) do |config|
  # The most common configuration options are documented and commented below.
  # For a complete reference, please see the online documentation at
  # https://docs.vagrantup.com.

  # Every Vagrant development environment requires a box. You can search for
  # boxes at https://atlas.hashicorp.com/search.
  config.vm.box = "bento_cent65"

  # vagrant-cachier
  if Vagrant.has_plugin?("vagrant-cachier")
    config.cache.scope = :box
  end

  # Disable automatic box update checking. If you disable this, then
  # boxes will only be checked for updates when the user runs
  # `vagrant box outdated`. This is not recommended.
  # config.vm.box_check_update = false

  # Create a forwarded port mapping which allows access to a specific port
  # within the machine from a port on the host machine. In the example below,
  # accessing "localhost:8080" will access port 80 on the guest machine.
  # config.vm.network "forwarded_port", guest: 80, host: 8080

  # Create a private network, which allows host-only access to the machine
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.33.11"
  #config.vm.network "private_network", ip: "33.33.33.1"

  # Create a public network, which generally matched to bridged network.
  # Bridged networks make the machine appear as another physical device on
  # your network.
  # config.vm.network "public_network"

  # Share an additional folder to the guest VM. The first argument is
  # the path on the host to the actual folder. The second argument is
  # the path on the guest to mount the folder. And the optional third
  # argument is a set of non-required options.
  # config.vm.synced_folder "../data", "/vagrant_data"

  # Provider-specific configuration so you can fine-tune various
  # backing providers for Vagrant. These expose provider-specific options.
  # Example for VirtualBox:
  #
  config.vm.provider "virtualbox" do |vb|
    # Display the VirtualBox GUI when booting the machine
    vb.gui = true
  
    # Customize the amount of memory on the VM:
    vb.memory = "8024"
  end
  #
  # View the documentation for the provider you are using for more
  # information on available options.

  # Define a Vagrant Push strategy for pushing to Atlas. Other push strategies
  # such as FTP and Heroku are also available. See the documentation at
  # https://docs.vagrantup.com/v2/push/atlas.html for more information.
  # config.push.define "atlas" do |push|
  #   push.app = "YOUR_ATLAS_USERNAME/YOUR_APPLICATION_NAME"
  # end

  # Enable provisioning with a shell script. Additional provisioners such as
  # Puppet, Chef, Ansible, Salt, and Docker are also available. Please see the
  # documentation for more information about their specific syntax and use.
  config.vm.provision "shell", inline: <<-SHELL
    sudo /etc/rc.d/init.d/iptables stop
    sudo chkconfig iptables off
    sudo ifconfig eth1 up
    sudo yum -y update
    sudo yum -y install kernel-devel kernel-headers dkms gcc gcc-c++
    sudo yum -y groupinstall 'Development Tools'
    sudo yum -y install make automake rpm-build redhat-rpm-config openssl-devel 
    sudo yum -y install curl-devel expat-devel gettext-devel zlib-devel perl-ExtUtils-MakeMaker
    sudo yum -y install curl dstat ruby lua mercurial
    sudo yum -y install ncurses-devel
    sudo yum -y install lua-devel 
    sudo yum -y install python-devel
    sudo yum -y install python-setuptools
    sudo easy_install pip
    sudo pip install Pygments
    sudo yum -y install ruby-devel
    sudo yum -y install perl-ExtUtils-Embed
    sudo yum -y install gtk2-devel atk-devel libX11-devel libXt-devel



    # apache2
    sudo yum -y install httpd httpd-devel

    # epel
    if [ ! -f /usr/local/src/epel-release-6-8.noarch.rpm  ]; then
        cd /usr/local/src/
        wget http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm
        rpm -ivh epel-release-6-8.noarch.rpm   
        cd
    else
        echo 'skip epel install'
    fi
    sudo yum -y install bash-completion

    # mysql 
    if [ ! -f /etc/yum.repos.d/mysql-community.repo ]; then
        sudo yum -y remove mysql*
        sudo yum -y install http://dev.mysql.com/get/mysql-community-release-el6-5.noarch.rpm
        sudo sed -i -e "19c enabled=1" /etc/yum.repos.d/mysql-community.repo
        sudo sed -i -e "27c enabled=0" /etc/yum.repos.d/mysql-community.repo
        sudo yum -y install mysql-community-server
    else
        echo 'skip mysql install'
    fi

    # php 
    sudo yum -y install libxslt-devel libcurl-devel libpng-devel libicu-devel
    sudo yum install -y re2c libevent-devel libxml2-devel bzip2-devel libjpeg-devel libXpm-devel freetype-devel readline-devel libtidy-devel
    sudo yum -y --enablerepo=rpmforge install libmcrypt libmcrypt-devel
    sudo yum -y install php

    # git 
    if [ ! -f /usr/local/bin/git ]; then
        export GIT_VERSION=2.6.3
        sudo wget https://www.kernel.org/pub/software/scm/git/git-${GIT_VERSION}.tar.gz
        mv git-${GIT_VERSION}.tar.gz /usr/local/src/
        cd /usr/local/src/
        tar xvzf git-${GIT_VERSION}.tar.gz
        rm git-${GIT_VERSION}.tar.gz
        cd git-${GIT_VERSION}
        sudo ./configure --prefix=/usr/local
        sudo make install
    else
        echo 'skip git install'
    fi

    #gui
    sudo yum -y groupinstall "X Window System" "Desktop" "General Purpose Desktop" "Japanese Support" "Desktop Platform"

    sudo sed -i s/en_US/ja_JP/ /etc/sysconfig/i18n
    souce /etc/sysconfig/i18n

    # global
    if [ ! -f /usr/local/bin/global ]; then
        export GLOBAL_VERSION=6.5.1
        cd /usr/local/src/
        sudo wget http://ftp.gnu.org/gnu/global/global-${GLOBAL_VERSION}.tar.gz
        tar xvzf global-${GLOBAL_VERSION}.tar.gz
        rm global-${GLOBAL_VERSION}.tar.gz
        cd global-${GLOBAL_VERSION}
        sudo ./configure --prefix=/usr/local
        sudo make
        sudo make install
    else
        echo 'skip global install'
    fi

    # libevent
    if [ ! -d /usr/local/src/libevent-2.0.22-stable ]; then
        cd /usr/local/src/
        sudo wget https://sourceforge.net/projects/levent/files/libevent/libevent-2.0/libevent-2.0.22-stable.tar.gz
        sudo tar xvzf libevent-2.0.22-stable.tar.gz
        sudo rm libevent-2.0.22-stable.tar.gz
        cd libevent-2.0.22-stable
        sudo ./configure
        sudo make
        sudo make install
        cd
    else
        echo 'skip libevent install'
    fi

    # tmux
    if [ ! -f /usr/local/bin/tmux ]; then
        cd /usr/local/src/
        sudo wget https://github.com/tmux/tmux/releases/download/2.1/tmux-2.1.tar.gz
        sudo tar xvzf tmux-2.1.tar.gz
        sudo rm tmux-2.1.tar.gz
        cd tmux-2.1
        sudo ./configure CFLAGS="-I/usr/local/include" CPPFLAGS="-I/usr/local/include" LDFLAGS="-L/usr/local/lib"
        sudo make
        sudo make install
        sudo ln -s /usr/local/lib/libevent-2.0.so.5 /usr/lib64/libevent-2.0.so.5
        cd
    else
        echo 'skip tmux install'
    fi


    # hw 
    if [ ! -f /etc/yum.repos.d/highway.repo ]; then
        echo '[repos.highway]'  | sudo tee -a highway.repo
        echo 'name=highway'  | sudo tee -a highway.repo
        echo 'baseurl=http://tkengo.github.io/highway/centos/6'  | sudo tee -a highway.repo
        echo 'enabled=0'  | sudo tee -a highway.repo
        echo 'gpgcheck=0'  | sudo tee -a highway.repo
        echo ''  | sudo tee -a highway.repo
        sudo mv highway.repo /etc/yum.repos.d/
        sudo yum install -y highway --enablerepo="repos.highway"
    else
        echo 'skip hw install'
    fi

    #vim
    if [ ! -f /usr/local/bin/vim ]; then
        cd /usr/local/src
        sudo git clone https://github.com/vim/vim.git
        cd vim 
        
        sudo ./configure \
          --with-features=huge \
          --enable-multibyte \
          --with-features=huge \
          --enable-cscope \
          --enable-gui=gtk2 \
          --enable-xim \
          --enable-fontset \
          --enable-gpm \
          --enable-perlinterp \
          --enable-pythoninterp \
          --enable-rubyinterp \
          --enable-luainterp=yes \
          --enable-fail-if-missing
        sudo make
        sudo make install
        cd

    else
        echo 'skip vim install'
    fi

    export KERN_DIR=`ls -t /usr/src/kernels/|head -1`
    sudo /etc/init.d/vboxadd setup
  SHELL
end
