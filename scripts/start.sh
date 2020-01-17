#/bin/bash

bin=`cd $(dirname $0) && pwd`
basedir=`dirname ${bin}`

nohup node ${basedir}/server.js &>> ${basedir}/server.log &
