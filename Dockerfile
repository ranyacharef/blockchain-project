FROM       node:alpine 

MAINTAINER https://github.com/ranyacharef/blockchain-project

EXPOSE     3000

WORKDIR    /blockchain-project 

COPY       package.json /blockchain-project

RUN        npm install

COPY       . /blockchain-project 

CMD        ["node", "bin/www"]