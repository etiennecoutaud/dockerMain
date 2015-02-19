from dockerfile/java:oracle-java8
maintainer Etienne Coutaud;

# Install prerequisites
run apt-get update
run apt-get install -y software-properties-common

# Install java8
#run add-apt-repository -y ppa:webupd8team/java
#run apt-get update
#run echo oracle-java8-installer shared/accepted-oracle-license-v1-1 select true | sudo /usr/bin/debconf-set-selections
#run apt-get install -y oracle-java8-installer

# Install tools
run apt-get install -y git maven

# Clone project
run git clone https://github.com/EtienneCoutaud/dockerMain.git

# Build project
run cd dockerMain &amp;&amp; mvn verify dependency:copy-dependencies

# Expose the http port


workdir dockerMain
