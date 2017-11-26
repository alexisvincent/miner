# FROM ubuntu

# RUN apt-get update
# RUN apt-get install -y  automake autoconf pkg-config libcurl4-openssl-dev libjansson-dev libssl-dev libgmp-dev make g++
# RUN apt-get install -y git
# RUN git clone --recursive https://github.com/tpruvot/cpuminer-multi.git && \
# 		cd cpuminer-multi && \
# 		git checkout linux && \
# 		./autogen.sh && \
# 		./configure CFLAGS="-march=native" --with-crypto --with-curl && \
# 		make

# WORKDIR cpuminer-multi
# RUN ls

# # to run cpuminer and load settings from example cpuminer-conf.json.lyra2re configuration file issue this command:
# CMD ./cpuminer -a cryptonight

FROM alexisvincent/cpuminer-opt

COPY ./config.json /etc/miner/config.json

CMD ["-c","/etc/miner/config.json"]
