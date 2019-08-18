FROM alexellis2/inlets:2.2.0
LABEL maintainer="Sergio Cinos <sergio.cinos@gmail.com>"
COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]