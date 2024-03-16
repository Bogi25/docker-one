#!/bin/bash
if ! docker ps &> /dev/null; then
        echo "Docker не запущений, буде запущенно"
        sudo systemctl start docker
        sleep 4
fi
if [[ "$PWD" != *"docker-one"* ]]; then
    # Перехід в папку docker-one
    cd docker-one
    echo -e "
    щоб зупинити контейнери перейдіть в папку docker-one та
     вконайте команду docker-compose down.
    Це може виглядати так:
    cd docker-one && docker-compose down\n"
fi
docker-compose up -d
sleep 5
docker ps
echo -e "\ncheck 5 containers should be running."