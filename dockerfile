# Mikolaj Stachira #
FROM alpine:latest
# pobieramy apache i php, usuwamy cache, usuwamy domyslna strone index.html
RUN apk add --update apache2 php7-apache2 php7-json php7 && \
rm -rf /var/cache/apk/* && \
rm -rf /var/www/localhost/htdocs/index.html
# kopiujemy index.php z folderu do obrazu
COPY /index.php /var/www/localhost/htdocs/index.php
# nadajemy uprawnienia read dla index.php by serwer mogl odczytac plik
# tworzymy log.txt, nadajemy mu uprawnienia read-write by serwer mogl do niego wpisywac dane
RUN chmod 755 /var/www/localhost/htdocs/index.php && \
touch /var/www/localhost/htdocs/log.txt && \
chmod 666 /var/www/localhost/htdocs/log.txt
# exposujemy port, by przegladarka mogla sie polaczyc z serwerem
EXPOSE 80/tcp
# httpd uruchamia serwer apache
ENTRYPOINT ["httpd"]
CMD ["-D", "FOREGROUND"]