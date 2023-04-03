# Global State Management

## State
State adalah data atau informasi yang dapat dibaca saat pembuatan widget. State akan berubah saat widget sedang aktif. Untuk mengelola state kita memerlukan StatefulWidget karena state hanya dimiliki oleh StatefulWidget. 

### Memanfaatkan State
Kita bisa memanfaatkan state ketika kita ingin membuat sebuah widget yang ingin memiliki perubahan. Kita bisa menyimpan nilainya di sebuah properti dari class, lalu jika ada perubahan state bisa digunakan oleh widget saat di build ulang. 

### Mengubah State
Untuk melakukan perubahan state, kita bisa menggunakan metode setState. 

## Global State
Global State adalah state yang dapat digunakan di seluruh aplikasi. Alasan perlunya global state adalah agar antara widget dapat memanfaatkan state yang sama dengan mudah. Contohnya fitur keranjang pada e-commerce, di mana kita membutuhkan state dari cart tidak hanya pada satu widget saja tetapi dapat diakses pada widget lain seperti yang ada pada deskripsi produk dan di halaman pembayaran.

Kita bisa menggunakan provider untuk pendekatan state management yang lebih kompleks dan provider perlu diinstall terlebih dahulu agar dapat digunakan. Caranya adalah menambah package provider di pubspec.yaml dan jalankan perintah flutter pub get.

