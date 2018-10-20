## Acestream via Docker container

Based on the excellent work from:
https://gist.github.com/jbergler/a51db1442ca226cc5973

#### Notes
1. Download and install Docker CE;
2. Open a terminal; 
3. Clone this repository: `git clone https://github.com/b7c1/acestream-via-docker.git`;
4. Change into the repository directory: `cd acestream-via-docker`; 
4. Run `docker-compose up`;
5. Select "Open Network" in VLC and use `http://127.0.0.1:8000/pid/acestream_key/stream.mp4`, replacing acestream_key with the desired information;
6. To stop the container, hit CTRL-C in the terminal window.

Tested on macOS 10.13 and 10.14 with Docker 18.06.1-ce.