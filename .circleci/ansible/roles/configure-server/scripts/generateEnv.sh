
echo "NODE_ENV=production" > /tmp/.env
echo "VERSION=1" >> /tmp/.env
echo "TYPEORM_CONNECTION=${TYPEORM_CONNECTION}"  >> /tmp/.env
echo "TYPEORM_MIGRATIONS_DIR=${TYPEORM_MIGRATIONS_DIR}" >> /tmp/.env
echo "TYPEORM_ENTITIES=${TYPEORM_ENTITIES}" >> /tmp/.env
echo "TYPEORM_MIGRATIONS=${TYPEORM_MIGRATIONS}" >> /tmp/.env

echo "TYPEORM_HOST=${TYPEORM_HOST}" >> /tmp/.env
echo "TYPEORM_PORT=${TYPEORM_PORT}" >> /tmp/.env
echo "TYPEORM_USERNAME=${TYPEORM_USERNAME}" >> /tmp/.env
echo "TYPEORM_PASSWORD=${TYPEORM_PASSWORD}" >> /tmp/.env
echo "TYPEORM_DATABASE=${TYPEORM_DATABASE}" >> /tmp/.env