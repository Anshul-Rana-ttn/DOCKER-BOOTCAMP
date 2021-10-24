# docker steps

step 1: sudo docker build -t webserver_docker_nginx .

step 2: sudo docker run -itd --name nginx_doc_1 -p 8081:80 webserver_docker_nginx

step 3: docker ps -a

step 4: docker images

step 4: (OPTIONAL) docker exec -it webserver_container /bin/bash
