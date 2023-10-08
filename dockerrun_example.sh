docker run -d \
    --name arch-wine-fs22 \
    -p 5900:5900/tcp \
    -p 8080:8080/tcp \
    -p 9000:9000/tcp \
    -p 10823:10823/tcp \
    -p 10823:10823/udp \
    -v /etc/localtime:/etc/localtime:ro \
    -v /opt/fs22/installer:/opt/fs22/installer \
    -v /opt/fs22/config:/opt/fs22/config \
    -v /opt/fs22/game:/opt/fs22/game \
    -e PUID=<UID from user> \
    -e PGID=<UID from user> \
    -e VNC_PASSWORD="<your vnc password>" \
    -e WEB_USERNAME="<dedicated server portal username>" \
    -e WEB_PASSWORD="<dedicated server portal password>" \
    -e SERVER_NAME="<your server name>" \
    -e SERVER_PASSWORD="your game join password" \
    -e SERVER_ADMIN="<your server admin password>" \
    -e SERVER_PLAYERS="16" \
    -e SERVER_PORT="10823" \
    -e SERVER_REGION="en" \
    -e SERVER_MAP="MapUS" \
    -e SERVER_DIFFICULTY="3" \
    -e SERVER_PAUSE="2" \
    -e SERVER_SAVE_INTERVAL="180.000000" \
    -e SERVER_STATS_INTERVAL="31536000" \
    -e SERVER_CROSSPLAY="true" \
    bayota/fs22
