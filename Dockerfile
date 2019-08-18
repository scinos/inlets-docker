FROM alexellis2/inlets:2.2.0
LABEL maintainer="Sergio Cinos <sergio.cinos@gmail.com>"
LABEL version="1.0.0"

COPY ./entrypoint.sh /
ENTRYPOINT [ "/entrypoint.sh" ]