FROM ubuntu:22.10

RUN apt-get update
RUN apt-get install nginx -y

RUN mkdir /pasta_calculadora_html
WORKDIR /pasta_calculadora_html
COPY Calculadora_html.html /var/www/html/

EXPOSE 80

CMD [ "nginx", "-g", "daemon off;"]
