hugo build
docker build -t oriantar/bapc2026 .
docker run -d --rm -p 8080:80 oriantar/bapc2026:latest 