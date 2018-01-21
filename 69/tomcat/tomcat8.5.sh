#!/usr/bin/env bash
# !/bin/sh
set -m
SCRIPT_URL="sh"
DOCKER_ID="bf2d204464dc"
WAR_PATH="/root/source/26"
function start_app() {
    compile_app
    docker cp ${WAR_PATH}/*.war ${DOCKER_ID}:/usr/local/tomcat/webapps &
    docker restart ${DOCKER_ID}
}
function compile_app(){
   ${SCRIPT_URL}/git-taoke.sh ant
   ${SCRIPT_URL}/git-weixinOauth.sh ant
}
start_app
