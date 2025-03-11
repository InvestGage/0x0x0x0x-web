# see versions at https://hub.docker.com/_/ghost
FROM ghost:5.14.1

WORKDIR $GHOST_INSTALL
COPY . .

# Limpiar la caché de npm y reinstalar dependencias
RUN npm cache clean --force && rm -rf node_modules package-lock.json
RUN npm install && npm install pg --save

ENTRYPOINT []
CMD ["./start.sh"]
