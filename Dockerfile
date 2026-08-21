FROM hugomods/hugo:0.165.0

WORKDIR /site

COPY . .

EXPOSE 8080

CMD ["hugo", "server", "-D", "--bind", "0.0.0.0", "--port", "8080"]