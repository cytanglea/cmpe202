from ubuntu
RUN apt-get update \
# config environment and tools
    && apt-get install -y git linux-tools-generic python python3 python3-pip \
# link the perf 
    && rm -f /usr/bin/perf && ln -s /usr/lib/linux-tools/4.4.0-116-generic/perf /usr/bin/perf \
# download project and config path
# because of the difference between the UTF code so fork to my own github
    && cd ~ \
    && git clone https://github.com/andikleen/pmu-tools.git \
    && git clone https://github.com/cytanglea/cnn-text-classification-tf.git\
    && echo "export PATH=~/pmu-tools:$PATH" >> ~/.bashrc \
# process  data
    && pip3 install tensorflow==1.0.0 \
