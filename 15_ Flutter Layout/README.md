# Flutter Layout

## Apa itu Layout
Layout digunakan untuk mengatur tata letak berbagai material seperti image, teks, dll... Layout dalam Flutter berbentuk widget yang mengatur widget di dalamnya.

## Single-child Layout
Single-child layout merupakan sebuah widget yang memiliki satu buah child saja.

### Container
Widget 'Container' memberikan tampilan seperti sebuah box. 'Container' dapat membungkus widget lain sebagai child nya. 'Container' dapat memiliki margin, padding, dan border.

### Center
Widget 'Center' akan memenuhi lebar dan tinggi ruang di luarnya dan membungkus widget lain sebagai child nya. Setiap widget yang menjadi child dari 'Center', widget-widget tersebut akan diletakkan pada posisi tengah.

### SizedBox
Widget 'SizedBox' merupakan bentuk sederhana dari 'Container' karena hanya memiliki beberapa properti seperti child, width, height, dan key. Tugas dari 'SizedBox' hanya mengatur lebar dan tinggi dari widget child nya.

## Multi-Child Layout
Kita gunakan multi-child layout saat kita ingin meletakkan child widget lebih dari satu. Kita akan menggunakan properti children yang tipe nya adalah array widget. 

### Column
Widget 'Column' adalah untuk mengatur widget-widget secara vertikal. 

### Row
Widget 'Row' adalah untuk mengatur widget-widget secara horizontal.

### ListView
Widget 'ListView' adalah untuk mengatur widget-widget dalam bentuk list dan memiliki kemampuan scroll.

### GridView
Widget 'GridView' adalah untuk mengatur widget-widget dalam bentuk galeri.