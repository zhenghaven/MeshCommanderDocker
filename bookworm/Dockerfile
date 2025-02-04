FROM node:23.7.0-bookworm


# MeshCommander
RUN mkdir /opt/meshcommander
WORKDIR /opt/meshcommander
RUN npm install meshcommander


# Start MeshCommander
ENTRYPOINT [ "node", "/opt/meshcommander/node_modules/meshcommander", "--any", "--port", "3000" ]
