#!/usr/bin/env bash

echo "If ulimit fails add 'limit maxfiles 2048 2048' to /etc/launchd.conf"
ulimit -n 2048

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
ROOT=$DIR/..

STREAMING=true
PARSER=htmlparser
FILE=$ROOT/data/search.xml

time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 10                             \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 20                             \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 30                             \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 50                             \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 100                            \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 200                            \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 300                            \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 500                            \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 1000                           \
&&                                  \
time $ROOT/bin/exmala -s $STREAMING \
  -p $PARSER                        \
  -f $FILE                          \
  -n 2000                           \
  -c 2000
