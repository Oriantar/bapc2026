FROM hugomods/hugo:0.165.0 AS build

WORKDIR /site

COPY . .

RUN hugo

FROM nginx:1.25-alpine

COPY --from=build /site/public /usr/share/nginx/html

EXPOSE 80/tcp