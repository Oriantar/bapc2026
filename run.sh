hugo build
docker build -t oriantar/bapc2026:dev .
docker run -d --rm -p 8080:80 oriantar/bapc2026:dev