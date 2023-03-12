# Installation Command Line Interface and Package Management in Flutter

## Flutter CLI (Command Line Interface)
CLI merupakan alat yang digunakan untuk berinteraksi dengan Flutter SDK. Interaksi tersebut merupakan sebuah perintah yang dijalankan dalam terminal untuk melakukan suatu tugas tertentu.

### Important CLI Commands
-Flutter Doctor: Perintah untuk menampilkan informasi software yang dibutuhkan Flutter.
-Flutter Create: Perintah untuk membuat project aplikasi Flutter baru di directory tertentu.
-Flutter Run: Perintah untuk menjalankan project aplikasi di device yang tersedia.
-Flutter Emulator: Perintah untuk menampilkan daftar emulator yang terinstall dan menampilkan option untuk membuka emulator atau membuat emulator baru.
-Flutter Channel: Perintah untuk menampilkan daftar Flutter channel yang tersedia dan menunjukkan channel yang digunakan saat ini.
-Flutter Pub: Terdapat 2 syntax yang dapat kita gunakan.'Flutter pub add', untuk menambahkan packages ke dependencies yang ada di 'pubspec.yaml'. 'Flutter pub.get' untuk mendownload semua packages atau dependencies yang ada di 'pubspec.yaml'.
-Flutter Build: Perintah untuk memproduksi sebuah file aplikasi untuk keperluan deploy atau publish ke AppStore, PlayStore, dll...
-Flutter Clean: Perintah untuk menghapus folder build serta file lainnya yang dihasilkan saat kita menjalankan aplikasi di emulator. Perintah ini akan memperkecil ukuran project tersebut.

## Packages Management
Flutter mendukung sharing packages yang merupakan kontribusi dari developers lain. Tujuan packages dibuat adalah untuk mempercepat pengembangan aplikasi karena tidak perlu membuat semuanya dari awal atau _from scratch_. Kita dapat mendapatkan packages tersebut di website 'pub.dev'.

### Cara Menambahkan Packages
1. Cari package di 'pub.dev'
2. Copy baris dependencies yang ada di bagian installing
3. Buka 'pubspec.yaml
4. Paste barisnya dibawah dependencies 'pubspec.yaml'
5. Run flutter pub get di terminal
6. Import package di file dart agar bisa digunakan
7. Stop atau restart aplikasi jika dibutuhkan


