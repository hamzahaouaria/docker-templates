docker build -t our-first-web-server -f web-server.Dockerfile .

docker run -d --name cont-web-server-cool -p 5001:5000 our-first-web-server