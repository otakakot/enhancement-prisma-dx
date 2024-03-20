#!/bin/bash

sleep 5

bun run prisma db push

bun run prisma studio &

while true; do
  inotifywait -e modify /schema/prisma/schema.prisma
  bun run prisma format
  bun run prisma db push
done
