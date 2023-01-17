<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8">
    <title>CSV-файл</title>
    <style></style>
  </head>
  <body>
    
  </body>
</html>

<?php
    opcache_reset();
/* Создать PHP-страницу upload.php с формой загрузки CSV-файла
В CSV-файле должны быть 2 столбца: название файла, содержимое
Рядом с файлом upload.php требуется создать папку /upload/ и создать в ней файлы, прочитав CSV-файл.
Какие дыры это может создать? Как бороться?

При загрузке такого файла должны быть созданы /upload/1.txt, /upload/2.log, /upload/3.html (с соответствующим содержимым)

Пример файла CSV:
aaa.txt, Привет
bbb.log, Тест
ccc.html, <h1>Заголовок</h1> */
?>