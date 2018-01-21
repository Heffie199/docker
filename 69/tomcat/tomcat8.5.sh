#!/usr/bin/env bash
# !/bin/sh
set -m
SCRIPT_URL="/root/sh"
DOCKER-ID="5a43cb2e530a"
WAR_PATH="/root/source/26"
function start_app() {
    compile_app
    docker cp ${WAR_PATH}/*.war ${DOCKER-ID}:/usr/local/tomcat/webapps &
    docker restart ${DOCKER-ID}
}
function compile_app(){
   ${SCRIPT_URL}/git-taoke.sh ant
   ${SCRIPT_URL}/git-weixinOauth.sh ant
}
start_app
