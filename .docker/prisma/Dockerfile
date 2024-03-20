FROM node:lts-slim
 
ENV BUN_INSTALL $HOME/.bun

ENV PATH $BUN_INSTALL/bin:$PATH

RUN apt-get update && apt-get install -y inotify-tools curl unzip

RUN curl -fsSL https://bun.sh/install | bash && \
    bun install prisma

WORKDIR /schema
