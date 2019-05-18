FROM aloysbaillet/aswf-openvdb-base

COPY install* /tmp/

RUN /tmp/install_cmake.sh 3.11.4 && \
    /tmp/install_boost.sh 1.66.0 && \
    /tmp/install_tbb.sh 2018 && \
    /tmp/install_openexr.sh 2.3.0 && \
    /tmp/install_blosc.sh 1.5.0
