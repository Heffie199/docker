#!/usr/bin/env bash
# !/bin/sh
set -m
SCRIPT_URL="sh"
DOCKER_NAME="tomcat-8.5"
WAR_PATH="/root/source/26"
function start_app() {
    compile_app
    docker cp ${WAR_PATH}/*.war tomcat-8.5:/usr/local/tomcat/webapps &
    docker restart tomcat-8.5
}
function compile_app(){
   ${SCRIPT_URL}/git-taoke.sh ant
   ${SCRIPT_URL}/git-weixinOauth.sh ant
}
start_app
