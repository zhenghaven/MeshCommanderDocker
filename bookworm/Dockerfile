FROM node:23.7.0-bookworm


# MeshCommander
RUN mkdir /opt/meshcommander
WORKDIR /opt/meshcommander
RUN npm install meshcommander


# Start MeshCommander
ENV MESH_CMD_PORT=3000
COPY openssl.conf  /openssl.conf
COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh
ENTRYPOINT [ "/entrypoint.sh" ]
