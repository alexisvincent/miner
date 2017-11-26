FROM debian

RUN apt-get update
RUN apt-get install build-essential libcurl4-openssl-dev git automake libtool libjansson* libncurses5-dev libssl-dev
RUN git clone --recursive https://github.com/tpruvot/cpuminer-multi.git
RUN git checkout linux
RUN ./autogen.sh
RUN ./configure CFLAGS="-march=native" --with-crypto --with-curl
RUN make

# to run cpuminer and load settings from example cpuminer-conf.json.lyra2re configuration file issue this command:
CMD ./cpuminer -c cpuminer-conf.json.lyra2re
