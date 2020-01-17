#!/bin/bash

bin=`cd $(dirname $0) && pwd`
basedir=`dirname ${bin}`

ps aux | grep ${basedir}/server.js | awk '{print $2}' | xargs kill -9
