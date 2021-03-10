#!/bin/bash
docker build -t torchserve:latest .
git lfs init
git clone https://huggingface.co/t5-small
./convert.sh t5-small t5smalltranslation
docker run --rm -it --name torchserve --shm-size=1g     --ulimit memlock=-1     --ulimit stack=67108864     -p 8080:8080     -p 8081:8081     -p 8082:8082     -p 7070:7070     -p 7071:7071 -v $(pwd):/home/model-server/src/ torchserve:latest torchserve --ts-config=/home/model-server/src/config.properties
