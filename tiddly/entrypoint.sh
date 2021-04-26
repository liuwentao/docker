#!/usr/bin/env sh

if [ ! -f "/app/tiddlywiki.info" ]; then
    tiddlywiki /app --init server
fi

tiddlywiki /app --listen host=0.0.0.0
