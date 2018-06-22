#!/usr/bin/env bash
# !/bin/sh
WORK="/usr/share/elasticsearch"
LOGSTASH="logstash-5.2.1"
DOCKER_NAME="elasticsearch"
function init() {
   docker exec -it ${DOCKER_NAME}  bash
   wget https://artifacts.elastic.co/downloads/logstash/${LOGSTASH}.tar.gz
   tar -zxvf ${LOGSTASH}.tar.gz
}
function cp() {
    docker cp etc ${DOCKER_NAME}:${WORK}/${LOGSTASH}
}
function start() {
    docker exec -it ${DOCKER_NAME}  bash
    cd ${LOGSTASH}
    bin/logstash -f etc/test.conf &
}
echo "脚本启动:"${WORK}
case $1 in
    init)
        init
         ;;
    start)
        cp
        start
         ;;
     *)
         echo -e "\033[31m Unkown command, please use init, start \033[0m"
         ;;
esac


