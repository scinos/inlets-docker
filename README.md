# Client image to connect to an inlets server

This image is based on the official inlets image https://hub.docker.com/r/alexellis2/inlets

The main difference is this image allow configuration of the tunnel via ENV vars


## Running

To connect to inlets specifying all paramters via flags, use `docker run --rm -ti scinos/inlets inlets client --remote ...`

## Configuration

You can pass the following ENV variables to customize the inlets command:

* `TUNNEL_NAME` and `TUNNEL_URL`. Equivalent to `--upstream "$TUNNEL_NAME=$TUNNEL_URL"`
* `TUNNEL_SERVER`. Equivalent to `--remote wcs://$TUNNEL_SERVER`