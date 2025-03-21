# see versions at https://hub.docker.com/_/ghost
FROM ghost:5.14.1

WORKDIR $GHOST_INSTALL
COPY . .

# Instalar el driver de PostgreSQL
RUN npm install pg --save

ENTRYPOINT []
CMD ["./start.sh"]
