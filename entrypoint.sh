#!/bin/sh -e

ARGS="inlets $@"

# Sets the upstream
if [[ -n "$TUNNEL_NAME" -a -n "$TUNNEL_URL" ]]; then
  ARGS="$ARGS --upstream \"${TUNNEL_NAME}=${TUNNEL_URL}\""
fi

# Sets the remote
if [[ -n "$TUNNEL_SERVER" ]]; then
  ARGS="$ARGS --remote wcs://${TUNNEL_SERVER}"
fi

set -x
exec $ARGS
