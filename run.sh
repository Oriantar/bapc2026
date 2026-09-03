hugo build
docker build -t oriantar/bapc2026:dev .
docker run --rm -p 8080:80 oriantar/bapc2026:dev