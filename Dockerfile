FROM ubuntu:trusty

RUN apt-get update > /dev/null 2>&1 ; \
    apt-get upgrade > /dev/null 2>&1 ; \
    apt-get install -y python-gevent python-psutil git wget screen python-setuptools > /dev/null 2>&1 ; \
    sh -c 'echo "deb http://repo.acestream.org/ubuntu/ trusty main" >> /etc/apt/sources.list.d/acestream.list' ; \
    wget -O - http://repo.acestream.org/keys/acestream.public.key | apt-key add - ; \
    apt-get update > /dev/null 2>&1 ; \
    apt-get install -y acestream-engine > /dev/null 2>&1 ; \
    git clone https://github.com/ValdikSS/aceproxy.git > /dev/null 2>&1 ; \
    sed -i -e 's/logging.DEBUG/logging.WARNING/g' aceproxy/aceconfig.py

EXPOSE 8000

CMD ["sh", "-c", "echo 'Acestream ready!' ; screen -S acestream -d -m acestreamengine --client-console ; python aceproxy/acehttp.py --bind-all"]