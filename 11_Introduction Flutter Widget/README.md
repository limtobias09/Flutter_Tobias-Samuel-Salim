# Flutter

## Apa itu Flutter?
Flutter adalah tool atau alat pengembangan antarmuka pengguna dari Google yang digunakan untuk membuat aplikasi mobile, desktop, dan web.

### Keunggulan Flutter
-Mudah digunakan dan dipelajari
-Produktivitas tinggi
-Memiliki dokumentasi lengkap
-Komunitas yang berkembang

### Bagian Dari Flutter
Flutter terdiri dari Sofware Development Kit (SDK) yang merupakan alat-alat untuk membantu proses pengembangan aplikasi dan dalam SDK sudah ada Framework yang merupakan perlengkapan untuk membuat aplikasi yang dapat dikustomisasi.
Frameword Flutter dapat dipakai untuk membangun aplikasi yang cantik, natively-compiled, dan multiplatform hanya dengan single codebase.

## Widget
Sebagian besar apikasi Flutter terbentuk dari widget-widget yang berguna untuk membentuk antarmuka (UI) aplikasi kita. Widget merupakan sebuah blueprint/class dan dapat terdiri dari beberapa widget lainnya. Kita dapat membayangkan ketika menggunakan widget seperti bermain LEGO dengan membangun blok mencampur dan memasangkannya untuk membuat tampilan UI yang cantik. Widget sendiri memiliki 2 jenis yaitu Stateless dan Stateful.

### _Stateless Widget_
Stateless widget tidak tergantung pada perubahan data dan hanya fokus pada tampilan. Stateless widget dapat dibuat dengan extends pada class StatelessWidget.

### _Stateful Widget_
Stateful widget merupakan kebalikan dari stateless widget karena lebih fokus pada perubahan data. Stateful widget dapat dibuat dengan extends pada class StatefulWidget. 1 widget menggunakan 2 class (widget dan state). 

### _Built In Widget_
Built in widget adalah widget yang dapat langsung digunakan dan sudah ter-install bersama Flutter atau merupakan bawaan dari Flutter. Contohnya seperti MaterialApp, Scaffold, Appbar, dll...