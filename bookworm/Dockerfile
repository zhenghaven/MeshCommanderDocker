FROM node:23.7.0-bookworm


# MeshCommander
RUN mkdir /opt/meshcommander
WORKDIR /opt/meshcommander
RUN npm install meshcommander


# Start MeshCommander
ENV MESH_CMD_PORT=3000
RUN echo '#!/bin/bash\nnode /opt/meshcommander/node_modules/meshcommander --any --port $MESH_CMD_PORT' > /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
