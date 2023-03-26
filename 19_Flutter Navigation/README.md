# Flutter Navigation

## Apa itu Navigation?
Navigation adalah bagaimana pengguna dapat berpindah dari halaman satu ke halaman lain.

## Navigation Dasar
Untuk berpindah halaman, kita dapat menggunakan 'Navigator.push()'. Untuk kembali ke halaman sebelumnya, kita dapat menggunakan 'Navigator.pop()'.
Selain berpindah halaman, kita juga dapat mengirimkan data ke halaman baru menggunakan parameter pada constructor halaman.

## Navigation Dengan Named Routes
Setiap halaman memiliki alamat yang disebut route. Kita dapat menggunakan alamat tersebut untuk melakukan perpindahan halaman. Untuk berpindah halaman kita dapat menggunakan 'Navigator.pushNamed()'. Untuk kembali ke halaman sebelumnya kita dapat menggunakan 'Navigator.pop()'.

### _Mendaftarkan Route_
Untuk menambahkan route, hal yang perlu kita lakukan adalah...
-Tambahkan initalRoute dan routes pada MaterialApp
-Tiap route adalah fungsi yang membentuk halaman

### _Mengirim Data ke Halaman Baru_
Untuk mengirim data ke halaman baru kita dapat menggunakan arguments saat melakukan pushNamed.

