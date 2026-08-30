# BAPC 2026

This is the website for BAPC 2026, just like last year created with [Hugo](https://gohugo.io/).

## Development
- Clone this repository including submodules: ```git clone --recurse-submodules https://github.com/Oriantar/bapc2026.git```
- Run ```hugo serve -D``` to run the application
- And visit [localhost:1313/](http://localhost:1313)

## Building
- To build the app and use the docker evironment 
- Run ```./run.sh```
- And visit [localhost:8080](http://localhost:8080)

## Deployment
- The Github deploys automaticlly the newest version of the main branch to docker
- To run this version merge your branch to main 
- And run ```docker run -p 8080:80 oriantar/bapc2026```
- And visit [localhost:8080](http://localhost:8080)
