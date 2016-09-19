#!/bin/bash

#reference:
#https://buffer.github.io/thug/doc/build.html

#Thug Honeyclient Package Dependencies 
installThugLibraries() {
	installGcc
	installUtilities
	installPython
	installBoost
	installLibemu
	installMongo
	installGraphviz
	installRabbitMQ
	installSsdeep
	installBeautifulSoup4
	installHtml5lib
	installJsbeautifier
	installPylibemu
	installPEfile
	installYara
	installYaraPython
        installLxml
	installChardet
	installPySocks
	installCssutils
	installZopeInterface
	installPyparsing
	installPygraphviz
	installRequests
	installPythonMagic
	installRarfile
	installNetworkX
	installPyMongo
	installAndroguard
	installBS4
	installPythonSsdeep
	installPyVeight
	installThug
}

installUtilities() {
	echo "Installing Git..."
	sudo apt-get install git -y 
	echo "Installing pip\n..."
	sudo easy_install pip 
}

installGcc() {
        echo "Installing Gcc..."
        sudo apt-get install gcc -y 
}

installPython() {
	echo "Installing Python 2.7..."
	sudo apt-get install software-properties-common -y
	sudo add-apt-repository ppa:fkrull/deadsnakes 
	sudo apt-get update -y
	sudo apt-get install python2.7 -y
}

installBoost() {
	echo "Installing Boost..."
        sudo apt-get install libboost-all-dev -y
}

installRequests() {
        echo "Installing Requests..."
        sudo pip install requests
}

installPyVeight() {
	echo "Installing Google V8/PyV8..."
	cd /opt
	sudo git clone https://github.com/buffer/pyv8.git 
	cd pyv8
	sudo apt-get install build-essential autoconf libtool pkg-config python-opengl python-imaging python-pyrex python-pyside.qtopengl idle-python2.7 qt4-dev-tools qt4-designer libqtgui4 libqtcore4 libqt4-xml libqt4-test libqt4-script libqt4-network libqt4-dbus python-qt4 python-qt4-gl libgle3 python-dev -y
	sudo easy_install greenlet 
	sudo easy_install gevent 
	sudo python setup.py build 
	sudo python setup.py install 
}

installLibemu() {
	echo "Installing Libemu..."
	cd /opt
	sudo git clone https://github.com/buffer/libemu.git 
	cd libemu
	autoreconf -v -i
	./configure --prefix=/opt/libemu
	sudo make install 
}

installMongo() {
	echo "Installing MongoDB & PyMongo..."
	sudo apt-get install mongodb -y
	sudo update-rc.d mongodb enable
}

installGraphviz() {
	echo "Installing Graphviz..."
	sudo apt-get install graphviz graphviz-dev -y
}

installRabbitMQ() {
	echo "Installing RabbitMQ & pika..."
	sudo apt-get install rabbitmq-server -y
	sudo pip install pika 
}

installSsdeep() {
        echo "Installing Ssdeep..."
        sudo apt-get install ssdeep -y
}

installBeautifulSoup4() {
        echo "Installing BeautifulSoup4..."
        sudo pip install beautifulsoup4 
}

installHtml5lib() {
	echo "Installing Html5lib..."
	sudo pip install html5lib 
}

installJsbeautifier() {
	echo "Installing Jsbeautifier..."
	sudo pip install jsbeautifier 
}

installPylibemu() {
	echo "Installing Pylibemu..."
	sudo pip install pylibemu 
}

installPEfile() {
	echo "Installing PEfile..."
	sudo pip install  pefile 
}

installYara() {
	echo "Installing Yara..."
	sudo apt-get install yara 
}

installYaraPython() {
	echo "Installing Yara-Python..."
	sudo git clone --recursive https://github.com/plusvic/yara-python 
	cd yara-python
	sudo python setup.py build 
	sudo python setup.py install 
}

installLxml() {
        echo "Installing Lxml..."
        sudo apt-get install libxml2-dev libxslt1-dev 
        sudo pip install lxml 
}

installChardet() {
	echo "Installing Chardet..."
	sudo pip install chardet 
}

installPySocks() {
	echo "Installing PySocks..."
	sudo pip install PySocks 
}

installCssutils() {
	echo "Installing Cssutils..."
	sudo pip install cssutils
}

installZopeInterface() {
	echo "Installing Zope.interface..."
	sudo pip install zope.interface 
}

installPyparsing() {
	echo "Installing Pyparsing..."
	sudo pip install pyparsing 
}

installPygraphviz() {
	echo "Installing Pygraphviz..."
	sudo pip install pygraphviz --install-option="--include-path=/usr/include/graphviz" --install-option="--library-path=/usr/lib/graphviz/"
}

installPythonMagic() {
	echo "Installing Python-Magic..."
	sudo pip install python-magic 
}

installRarfile() {
	echo "Installing Rarfile..."
	sudo pip install rarfile 
}

installNetworkX() {
        echo "Installing NetworkX..."
        sudo pip install networkx 
}

installPyMongo() {
        echo "Installing PyMongo..."
        sudo pip install pymongo 
}

installAndroguard() {
        echo "Installing Androguard..."
        sudo pip install androguard 
}

installBS4() {
        echo "Installing BS4..."
        sudo pip install bs4 
}

installPythonSsdeep() {
        echo "Installing Python-Ssdeep..."
 	sudo apt-get install libffi-dev libfuzzy-dev -y
        sudo pip install ssdeep 
}

installThug() {
        echo "Installing Thug..."
        cd /opt
        sudo git clone https://github.com/buffer/thug.git
	cd thug/src
}

#Install Updates
sudo apt-get -f install
echo "Installing easy_install..."
sudo apt-get install python-setuptools -y 
echo "Checking for updates..."
sudo apt-get update -y && sudo apt-get upgrade -y && sudo apt-get dist-upgrade -y && sudo apt-get autoremove -y

#Install Thug Honeyclient (Takes forrrrrrever)
echo "Thug Honeyclient install built for Kali Linux..."
installThugLibraries



