FROM hugomods/hugo:0.165.0

WORKDIR /site

COPY . .

EXPOSE 8080

CMD ["hugo", "server", "-D", "--port", "8080"]