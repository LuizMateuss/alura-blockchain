FROM node:20.17

WORKDIR /home/app

COPY . .

RUN curl -L https://foundry.paradigm.xyz | bash
RUN /bin/bash -c "source ~/.bashrc && foundryup"

ENTRYPOINT ["tail", "-f", "/dev/null"]