FROM redis:4.0
COPY redis/redis.conf /usr/local/etc/redis/redis.conf
VOLUME data :/data
CMD [ "redis-server","/usr/local/etc/redis/redis.conf" ]