#!/bin/sh
PORT=$1
if [ "$PORT" = "" ]; then
  PORT=6379
fi

redis-cli -p $PORT sunionstore "charset:kana" "charset:hiragana" "charset:katakana"
