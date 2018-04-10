sudo docker build -t web_server .
sudo docker run -d --restart=always --name web_server -p 8000:8000 web_server
cd reverse_proxy
sudo docker build --no-cache -t proxy .
sudo docker run -d --restart=always --name proxy --link web_server:web_server -p 80:80 -e NGINX_HOST=localhost -e NGINX_PROXY=http://localhost:8000 proxy
sudo docker rm -v -f web_server proxy

