# 3
a. docker build -t test1 . </br>
b. docker run -it --name test test1 </br>
c. docker exec -it test1 cat /var/www/localhost/htdocs/log.txt </br>
d. docker history test1 </br>
<img src="screen.png" alt="screen z przegladarki potwierdzajacy dzialanie systemu" title="screen z przegladarki potwierdzajacy dzialanie systemu">
# 4
"czy a jeśli tak to w jaki sposób można zbudować obraz wykorzystując bezpośrednia link do Dockerfile umieszczonego na GitHub" </br>
polecenie "docker build https://github.com/mst235234/zad1.git#master" </br>
"jak przenieść stworzony obraz na swoje konto na DockerHub" </br>
1. Budujemy obraz z githuba docker build https://github.com/mst235234/zad1.git#master -t "login/nazwaobrazu" </br>
2. Logujemy sie do dockerhuba: docker login </br>
3. Pushujemy: docker push login/nazwaobrazu </br>
