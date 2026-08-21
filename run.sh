hugo build
docker build -t oriantar/bapc2026 .
docker run -p 8080:8080 oriantar/bapc2026 