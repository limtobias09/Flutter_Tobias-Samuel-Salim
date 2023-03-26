# Assets
Assets adalah file yang di bundled dan di deployed bersamaan dengan aplikasi kita. Tipe-tipe assets seperti static data (JSON files), icons, images, dan font file (ttf).

## Menentukan Assets
Untuk menentukan assets, kita dapat menggunakan 'pubspec.yaml'. 'pubspec.yaml' terletak pada root project, untuk mengidentifikasi assets yang dibutuhkan pada project aplikasi kita. Gunakan karakter '/' untuk memasukan semua assets dibawah satu directory name. Contohnya 'assets/my_icon.png', 'assets/background.jpg'.

# Image
Penggunaan image atau gambar akan membuat tampilan aplikasi menjadi lebih menarik. FLutter mendukung format gambar seperti JPEG, WebP, GIF, Animated Web/GIf, PNG, BMP, dan WBMP. Untuk menampilkan gambar dari aplikasi, kita bisa mendapatkan image nya dari project asset atau internet.

## Loading Images
-Gunakan widget Image
-Membutuhkan properti image dengan class 'AssetImage()' (keuntungannya adalah dapat menampilkan gambar lebih cepat dan CPU friendly)
-Menggunakan metode Image.asset, mendapatkan image yang sudah ditambahkan dalam project (keuntungannya adalah dapat membuat kode kita lebih bersih dan rapi)
-Menggunakan metode Image.network, mendapatkan data image melalui internet dengan menggunakan string url nya

# Font
Penggunaan font dengan style tertentu akan menjadi keunikan pada aplikasi. Penentuan font yang mau dipakai biasanya ditentukan oleh UI designer. Penerapan font menggunakan custom font atau dari package.

### _Cara menggunakan custom font_
Step 1: Cari dan download font (ex: https://fonts.google.com)
Step 2: Import file.ttf
Step 3: Daftarkan font di 'pubspec.yaml'
Step 4: Mengatur font sebagai default
Step 5: Gunakan font di spesifik widget

### _Cara menggunakan font dari package_
Step 1: Tambahkan package google_fonts di dependencies
Step 2: Import package di file dart
Step 3: Gunakan font dengan memanggil 'GoogleFonts.namaFont()'




