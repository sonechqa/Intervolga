<?php
opcache_reset();
/* Вставить $a в индексный (простой) массив целых чисел после всех элементов, в которых есть цифра 2.
Новый массив создавать нельзя. Использовать array_splice нельзя. */
    $array = array(1, 25, 7, 12, 36, 4, 52, 9);
    $a = 3;
    $length = count($array);
    for ($i = 0; $i < $length; $i++) {
        if (strrpos($array[$i], "2") !== false) {
            $length++;                               // поскольку мы добавляем элемент в массив, длина должна увеличиться
            for ($j = $length - 1; $j > $i; $j--) {  // перебираем элементы с конца, чтобы
                $array[$j] = $array[$j - 1];         // сдвинуть их на 1
            }
            $i++;
            $array[$i] = $a;
        }
    }
    print_r($array);
?>