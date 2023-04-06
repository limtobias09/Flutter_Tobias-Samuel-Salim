# BLoC

BLoC merupakan singkatan dari Business Logic Component yang memisahkan business logic dengan UI atau widget. Alasan kenapa kita menggunakan BLoC adalah karena simple atau mudah untuk digunakan, powerful karena dapat mempercepat proses-proses tertentu, dan testable yang artinya mudah untuk dilakukan pengujian.

## Cara Kerja BLoC
-Menerima event sebagai input
-Dianalisa dan dikelola di dalam BLoC
-Menghasil state sebagai output

## Stream
Di dalam BLoC terdapat Stream yang merupakan rangkaian proses secara asynchronous dan actor utama dalam BLoC. Jadi saat kita menerapkan BLoC, kita memanfaatkan Stream untuk menajalankan beberapa proses 