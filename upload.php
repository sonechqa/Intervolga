<!-- Создать PHP-страницу upload.php с формой загрузки CSV-файла
В CSV-файле должны быть 2 столбца: название файла, содержимое
Рядом с файлом upload.php требуется создать папку /upload/ и создать в ней файлы, прочитав CSV-файл.
Какие дыры это может создать? Как бороться?

При загрузке такого файла должны быть созданы /upload/1.txt, /upload/2.log, /upload/3.html (с соответствующим содержимым)

Пример файла CSV:
1.txt, Привет
2.log, Тест
3.html, <h1>Заголовок</h1> -->

<!DOCTYPE html>
<html lang="ru">
  <head>
    <meta charset="UTF-8">
    <title>CSV-файл</title>
    <style></style>
  </head>
  <body>
    <form action="action.php" method="post" enctype="multipart/form-data" class="upload">
      <p class="upload_title">
        Выберите CSV-файл для загрузки:
      </p>
      <input type="file" name="filename" class="upload_file"/>
      <input type="submit" value="Отправить" class="upload_send"/>
    </form>
  </body>
</html>


<style>
  .upload {
    display: flex;
    flex-direction: column;
  }

  .upload_title {
    font-size: 24px;
  }

  .upload_file {
    cursor: pointer;
    margin-bottom: 40px;
  }

  .upload_send {
    width: 10%;
    padding: 5px;
    cursor: pointer;
    transition: background-color 0.3s;
    border: 1px solid #999999;
    border-radius: 5px;
  }
</style>