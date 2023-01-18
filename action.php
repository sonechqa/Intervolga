<?php
    opcache_reset();

    if (is_uploaded_file($_FILES['filename']['tmp_name'])) {
        $file = new SplFileObject($_FILES['filename']['name']);
        while (!$file->eof()) {
            $array = $file->fgetcsv();
            $new_file = fopen("upload/$array[0]", "w+");
            fwrite($new_file, $array[1]);
        }
        echo "Файл успешно загружен!";
    } else {
        echo "Произошла ошибка";
    }
?>