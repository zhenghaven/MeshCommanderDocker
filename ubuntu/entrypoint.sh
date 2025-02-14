#!/bin/bash
node --openssl-config=/openssl.conf /opt/meshcommander/node_modules/meshcommander --debug --any --port $MESH_CMD_PORT
